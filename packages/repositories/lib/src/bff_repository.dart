import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;
import 'package:models/models.dart';
import 'package:result_type/result_type.dart';

export 'package:models/models.dart';
export 'package:result_type/result_type.dart';
export 'package:services/services.dart' hide PetStatus;

const kClientTimeoutSeconds = 30;

/// Handles a network response returned by [invoker], deserializes with [deserializer],
/// and propagates the mapped result as a [Result<T>]
///
/// Recognizes specific cases:
/// - successful response 2xx
/// - other expected response, confirmed by the optional [validator]
///   (which is helpful with caching when '304 = Not Modified' response is expected)
/// - '401 = Unauthorized', due to either an expired token or invalid one
/// - network related failures
/// - other failures
/// Also allows gracefully handle '400 = Invalid Request' with expected response body:
/// - [customValidator] signals that HTTP status [code] = 400 is fine, returning 'true';
/// - [deserializer] extracts result types for [code] 200 and 400 accordingly
class BffRepository {
  Future<Result<T, FailureResult>> guardApiCall<T, TSource>({
    required Future<Response<TSource>> Function() invoker,
    required FutureOr<T> Function(TSource) mapper,
    bool Function(int code, Map<String, String> headers, String body)? fallbackValidator,
    T Function(Response<dynamic> response)? fallbackMapper,
    bool handleExpiration = true,
    T? defaultValue,
  }) async {
    try {
      final response = await invoker().timeout(const Duration(seconds: kClientTimeoutSeconds));

      if (response.statusCode == HttpStatus.unauthorized) {
        if (handleExpiration && await _tryRefreshToken()) {
          return guardApiCall<T, TSource>(
              invoker: invoker,
              mapper: mapper,
              fallbackValidator: fallbackValidator,
              fallbackMapper: fallbackMapper,
              handleExpiration: false);
        } else {
          return Failure(FailureResult(FailureReasons.tokenExpired, response.bodyString));
        }
      }

      if (response.isSuccessful) {
        if (response.body != null) {
          return Success(await mapper(response.body!));
        } else {
          return Success(defaultValue ?? null as T);
        }
      } else {
        return fallbackValidator != null &&
                fallbackValidator(response.statusCode, response.headers, response.bodyString)
            ? Success(fallbackMapper!.call(response))
            : Failure(
                FailureResult(
                  FailureReasons.unknown,
                  '${response.statusCode} on '
                  '${response.base.request?.method} ${response.base.request?.url} | '
                  'Body: ${response.bodyString}',
                  code: _parseErrorCode(response.error),
                ),
              );
      }
    } on SocketException catch (ex) {
      return Failure(FailureResult(FailureReasons.noInternetConnection, ex.toString()));
    } on TimeoutException catch (ex) {
      return Failure(FailureResult(FailureReasons.timeout, ex.toString()));
    } on http.ClientException catch (ex) {
      return Failure(FailureResult(FailureReasons.unknown, ex.toString()));
    } catch (ex) {
      return Failure(FailureResult(FailureReasons.unknown, ex.toString()));
    }
  }

  String _parseErrorCode(Object? error) {
    try {
      if (error is String) {
        return (jsonDecode(error) as Map<String, dynamic>)['code'];
      }

      return '';
    } catch (_) {
      return '';
    }
  }

  Future<bool> _tryRefreshToken() async => false;
}

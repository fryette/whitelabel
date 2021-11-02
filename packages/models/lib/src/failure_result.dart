import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_result.freezed.dart';

@freezed
class FailureResult with _$FailureResult {
  factory FailureResult(
    FailureReasons reason,
    String debugMessage, {
    @Default('') String code,
  }) = _FailureResult;
}

enum FailureReasons {
  noInternetConnection,
  timeout,
  tokenExpired,
  unknown,
}

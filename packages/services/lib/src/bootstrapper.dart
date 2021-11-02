import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

import 'swagger_generated_code/pet_service.swagger.dart';

void setupServices(GetIt ioc) {
  ioc
    ..registerLazySingleton(() => ChopperClient(
          baseUrl: 'https://petstore.swagger.io',
          client: _createHttpClient(),
          converter: $JsonSerializableConverter(),
          interceptors: [
            //BffRequestInterceptor(() async => ioc.get<AuthRepository>().token),
            //BffResponseInterceptor(),
          ],
        ))
    ..registerLazySingleton(() => PetService.create(ioc.get<ChopperClient>()));
}

http.Client _createHttpClient() {
  const kClientTimeoutSeconds = 30;

  final httpClient = HttpClient();
  httpClient.connectionTimeout = const Duration(seconds: kClientTimeoutSeconds);
  httpClient.idleTimeout = const Duration(seconds: kClientTimeoutSeconds);

  return IOClient(httpClient);
}

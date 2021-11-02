import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';

void setupServices(GetIt ioc) {
  ioc.registerLazySingleton(() => PetsRepository(ioc.get()));
}

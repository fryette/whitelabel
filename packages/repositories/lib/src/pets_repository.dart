import 'package:models/models.dart' as models;
import 'package:repositories/src/bff_repository.dart';
import 'package:services/services.dart' as data;

part 'pets_repository.mapper.dart';

class PetsRepository extends BffRepository {
  final PetService _petService;

  PetsRepository(this._petService);

  Future<Result<List<PetModel>, FailureResult>> fetchPets() async {
    return guardApiCall<List<PetModel>, List<Pet>>(
      invoker: () => _petService.petFindByStatusGet(status: PetFindByStatusGetStatus.available),
      mapper: (value) => value.map((e) => e.toModel()).toList(),
    );
  }
}

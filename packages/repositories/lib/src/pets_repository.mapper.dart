part of 'pets_repository.dart';

extension on Pet {
  PetModel toModel() {
    return PetModel(
      id: id!,
      category: category!.toModel(),
      name: name!,
      photoUrl: photoUrls!.firstWhere((_) => true, orElse: () => ''),
      tags: tags!.map((e) => e.toModel()).toList(),
      status: status!.toModel(),
    );
  }
}

extension on Category {
  PetCategoryModel toModel() {
    return PetCategoryModel(
      id: id!,
      name: name!,
    );
  }
}

extension on Tag {
  PetTagModel toModel() {
    return PetTagModel(
      id: id!,
      name: name!,
    );
  }
}

extension on data.PetStatus {
  models.PetStatus toModel() {
    switch (this) {
      case data.PetStatus.swaggerGeneratedUnknown:
        return models.PetStatus.unavailable;
      case data.PetStatus.available:
        return models.PetStatus.available;
      case data.PetStatus.pending:
        return models.PetStatus.pending;
      case data.PetStatus.sold:
        return models.PetStatus.sold;
    }
  }
}

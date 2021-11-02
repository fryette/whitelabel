import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet.freezed.dart';

@freezed
class PetModel with _$PetModel {
  factory PetModel({
    required int id,
    required PetCategoryModel category,
    required String name,
    required String photoUrl,
    required List<PetTagModel> tags,
    required PetStatus status,
  }) = _PetModel;
}

@freezed
class PetCategoryModel with _$PetCategoryModel {
  factory PetCategoryModel({
    required int id,
    required String name,
  }) = _PetCategoryModel;
}

@freezed
class PetTagModel with _$PetTagModel {
  factory PetTagModel({
    required int id,
    required String name,
  }) = _PetTagModel;
}

enum PetStatus {
  available,
  unavailable,
  pending,
  sold,
}

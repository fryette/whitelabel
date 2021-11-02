// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PetModelTearOff {
  const _$PetModelTearOff();

  _PetModel call(
      {required int id,
      required PetCategoryModel category,
      required String name,
      required String photoUrl,
      required List<PetTagModel> tags,
      required PetStatus status}) {
    return _PetModel(
      id: id,
      category: category,
      name: name,
      photoUrl: photoUrl,
      tags: tags,
      status: status,
    );
  }
}

/// @nodoc
const $PetModel = _$PetModelTearOff();

/// @nodoc
mixin _$PetModel {
  int get id => throw _privateConstructorUsedError;
  PetCategoryModel get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  List<PetTagModel> get tags => throw _privateConstructorUsedError;
  PetStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetModelCopyWith<PetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetModelCopyWith<$Res> {
  factory $PetModelCopyWith(PetModel value, $Res Function(PetModel) then) =
      _$PetModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      PetCategoryModel category,
      String name,
      String photoUrl,
      List<PetTagModel> tags,
      PetStatus status});

  $PetCategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class _$PetModelCopyWithImpl<$Res> implements $PetModelCopyWith<$Res> {
  _$PetModelCopyWithImpl(this._value, this._then);

  final PetModel _value;
  // ignore: unused_field
  final $Res Function(PetModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as PetCategoryModel,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<PetTagModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetStatus,
    ));
  }

  @override
  $PetCategoryModelCopyWith<$Res> get category {
    return $PetCategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$PetModelCopyWith<$Res> implements $PetModelCopyWith<$Res> {
  factory _$PetModelCopyWith(_PetModel value, $Res Function(_PetModel) then) =
      __$PetModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      PetCategoryModel category,
      String name,
      String photoUrl,
      List<PetTagModel> tags,
      PetStatus status});

  @override
  $PetCategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$PetModelCopyWithImpl<$Res> extends _$PetModelCopyWithImpl<$Res>
    implements _$PetModelCopyWith<$Res> {
  __$PetModelCopyWithImpl(_PetModel _value, $Res Function(_PetModel) _then)
      : super(_value, (v) => _then(v as _PetModel));

  @override
  _PetModel get _value => super._value as _PetModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_PetModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as PetCategoryModel,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<PetTagModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetStatus,
    ));
  }
}

/// @nodoc

class _$_PetModel implements _PetModel {
  _$_PetModel(
      {required this.id,
      required this.category,
      required this.name,
      required this.photoUrl,
      required this.tags,
      required this.status});

  @override
  final int id;
  @override
  final PetCategoryModel category;
  @override
  final String name;
  @override
  final String photoUrl;
  @override
  final List<PetTagModel> tags;
  @override
  final PetStatus status;

  @override
  String toString() {
    return 'PetModel(id: $id, category: $category, name: $name, photoUrl: $photoUrl, tags: $tags, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, category, name, photoUrl,
      const DeepCollectionEquality().hash(tags), status);

  @JsonKey(ignore: true)
  @override
  _$PetModelCopyWith<_PetModel> get copyWith =>
      __$PetModelCopyWithImpl<_PetModel>(this, _$identity);
}

abstract class _PetModel implements PetModel {
  factory _PetModel(
      {required int id,
      required PetCategoryModel category,
      required String name,
      required String photoUrl,
      required List<PetTagModel> tags,
      required PetStatus status}) = _$_PetModel;

  @override
  int get id;
  @override
  PetCategoryModel get category;
  @override
  String get name;
  @override
  String get photoUrl;
  @override
  List<PetTagModel> get tags;
  @override
  PetStatus get status;
  @override
  @JsonKey(ignore: true)
  _$PetModelCopyWith<_PetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PetCategoryModelTearOff {
  const _$PetCategoryModelTearOff();

  _PetCategoryModel call({required int id, required String name}) {
    return _PetCategoryModel(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $PetCategoryModel = _$PetCategoryModelTearOff();

/// @nodoc
mixin _$PetCategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetCategoryModelCopyWith<PetCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCategoryModelCopyWith<$Res> {
  factory $PetCategoryModelCopyWith(
          PetCategoryModel value, $Res Function(PetCategoryModel) then) =
      _$PetCategoryModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$PetCategoryModelCopyWithImpl<$Res>
    implements $PetCategoryModelCopyWith<$Res> {
  _$PetCategoryModelCopyWithImpl(this._value, this._then);

  final PetCategoryModel _value;
  // ignore: unused_field
  final $Res Function(PetCategoryModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PetCategoryModelCopyWith<$Res>
    implements $PetCategoryModelCopyWith<$Res> {
  factory _$PetCategoryModelCopyWith(
          _PetCategoryModel value, $Res Function(_PetCategoryModel) then) =
      __$PetCategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$PetCategoryModelCopyWithImpl<$Res>
    extends _$PetCategoryModelCopyWithImpl<$Res>
    implements _$PetCategoryModelCopyWith<$Res> {
  __$PetCategoryModelCopyWithImpl(
      _PetCategoryModel _value, $Res Function(_PetCategoryModel) _then)
      : super(_value, (v) => _then(v as _PetCategoryModel));

  @override
  _PetCategoryModel get _value => super._value as _PetCategoryModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_PetCategoryModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PetCategoryModel implements _PetCategoryModel {
  _$_PetCategoryModel({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'PetCategoryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  _$PetCategoryModelCopyWith<_PetCategoryModel> get copyWith =>
      __$PetCategoryModelCopyWithImpl<_PetCategoryModel>(this, _$identity);
}

abstract class _PetCategoryModel implements PetCategoryModel {
  factory _PetCategoryModel({required int id, required String name}) =
      _$_PetCategoryModel;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PetCategoryModelCopyWith<_PetCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PetTagModelTearOff {
  const _$PetTagModelTearOff();

  _PetTagModel call({required int id, required String name}) {
    return _PetTagModel(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $PetTagModel = _$PetTagModelTearOff();

/// @nodoc
mixin _$PetTagModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetTagModelCopyWith<PetTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetTagModelCopyWith<$Res> {
  factory $PetTagModelCopyWith(
          PetTagModel value, $Res Function(PetTagModel) then) =
      _$PetTagModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$PetTagModelCopyWithImpl<$Res> implements $PetTagModelCopyWith<$Res> {
  _$PetTagModelCopyWithImpl(this._value, this._then);

  final PetTagModel _value;
  // ignore: unused_field
  final $Res Function(PetTagModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PetTagModelCopyWith<$Res>
    implements $PetTagModelCopyWith<$Res> {
  factory _$PetTagModelCopyWith(
          _PetTagModel value, $Res Function(_PetTagModel) then) =
      __$PetTagModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$PetTagModelCopyWithImpl<$Res> extends _$PetTagModelCopyWithImpl<$Res>
    implements _$PetTagModelCopyWith<$Res> {
  __$PetTagModelCopyWithImpl(
      _PetTagModel _value, $Res Function(_PetTagModel) _then)
      : super(_value, (v) => _then(v as _PetTagModel));

  @override
  _PetTagModel get _value => super._value as _PetTagModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_PetTagModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PetTagModel implements _PetTagModel {
  _$_PetTagModel({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'PetTagModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetTagModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  _$PetTagModelCopyWith<_PetTagModel> get copyWith =>
      __$PetTagModelCopyWithImpl<_PetTagModel>(this, _$identity);
}

abstract class _PetTagModel implements PetTagModel {
  factory _PetTagModel({required int id, required String name}) =
      _$_PetTagModel;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PetTagModelCopyWith<_PetTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_recipes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetRecipesModel _$GetRecipesModelFromJson(Map<String, dynamic> json) {
  return _GetRecipesModel.fromJson(json);
}

/// @nodoc
mixin _$GetRecipesModel {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get readyInMinutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRecipesModelCopyWith<GetRecipesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecipesModelCopyWith<$Res> {
  factory $GetRecipesModelCopyWith(
          GetRecipesModel value, $Res Function(GetRecipesModel) then) =
      _$GetRecipesModelCopyWithImpl<$Res, GetRecipesModel>;
  @useResult
  $Res call(
      {String title, String image, String summary, int id, int readyInMinutes});
}

/// @nodoc
class _$GetRecipesModelCopyWithImpl<$Res, $Val extends GetRecipesModel>
    implements $GetRecipesModelCopyWith<$Res> {
  _$GetRecipesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? summary = null,
    Object? id = null,
    Object? readyInMinutes = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      readyInMinutes: null == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetRecipesModelCopyWith<$Res>
    implements $GetRecipesModelCopyWith<$Res> {
  factory _$$_GetRecipesModelCopyWith(
          _$_GetRecipesModel value, $Res Function(_$_GetRecipesModel) then) =
      __$$_GetRecipesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String image, String summary, int id, int readyInMinutes});
}

/// @nodoc
class __$$_GetRecipesModelCopyWithImpl<$Res>
    extends _$GetRecipesModelCopyWithImpl<$Res, _$_GetRecipesModel>
    implements _$$_GetRecipesModelCopyWith<$Res> {
  __$$_GetRecipesModelCopyWithImpl(
      _$_GetRecipesModel _value, $Res Function(_$_GetRecipesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? summary = null,
    Object? id = null,
    Object? readyInMinutes = null,
  }) {
    return _then(_$_GetRecipesModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      readyInMinutes: null == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetRecipesModel implements _GetRecipesModel {
  const _$_GetRecipesModel(
      {required this.title,
      required this.image,
      required this.summary,
      required this.id,
      required this.readyInMinutes});

  factory _$_GetRecipesModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetRecipesModelFromJson(json);

  @override
  final String title;
  @override
  final String image;
  @override
  final String summary;
  @override
  final int id;
  @override
  final int readyInMinutes;

  @override
  String toString() {
    return 'GetRecipesModel(title: $title, image: $image, summary: $summary, id: $id, readyInMinutes: $readyInMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRecipesModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                other.readyInMinutes == readyInMinutes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, image, summary, id, readyInMinutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetRecipesModelCopyWith<_$_GetRecipesModel> get copyWith =>
      __$$_GetRecipesModelCopyWithImpl<_$_GetRecipesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetRecipesModelToJson(
      this,
    );
  }
}

abstract class _GetRecipesModel implements GetRecipesModel {
  const factory _GetRecipesModel(
      {required final String title,
      required final String image,
      required final String summary,
      required final int id,
      required final int readyInMinutes}) = _$_GetRecipesModel;

  factory _GetRecipesModel.fromJson(Map<String, dynamic> json) =
      _$_GetRecipesModel.fromJson;

  @override
  String get title;
  @override
  String get image;
  @override
  String get summary;
  @override
  int get id;
  @override
  int get readyInMinutes;
  @override
  @JsonKey(ignore: true)
  _$$_GetRecipesModelCopyWith<_$_GetRecipesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

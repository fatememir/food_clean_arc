// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipesInformation {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get readyInMinutes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipesInformationCopyWith<RecipesInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesInformationCopyWith<$Res> {
  factory $RecipesInformationCopyWith(
          RecipesInformation value, $Res Function(RecipesInformation) then) =
      _$RecipesInformationCopyWithImpl<$Res, RecipesInformation>;
  @useResult
  $Res call({int id, String title, String image, int readyInMinutes});
}

/// @nodoc
class _$RecipesInformationCopyWithImpl<$Res, $Val extends RecipesInformation>
    implements $RecipesInformationCopyWith<$Res> {
  _$RecipesInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? readyInMinutes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      readyInMinutes: null == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipesInformationCopyWith<$Res>
    implements $RecipesInformationCopyWith<$Res> {
  factory _$$_RecipesInformationCopyWith(_$_RecipesInformation value,
          $Res Function(_$_RecipesInformation) then) =
      __$$_RecipesInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String image, int readyInMinutes});
}

/// @nodoc
class __$$_RecipesInformationCopyWithImpl<$Res>
    extends _$RecipesInformationCopyWithImpl<$Res, _$_RecipesInformation>
    implements _$$_RecipesInformationCopyWith<$Res> {
  __$$_RecipesInformationCopyWithImpl(
      _$_RecipesInformation _value, $Res Function(_$_RecipesInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? readyInMinutes = null,
  }) {
    return _then(_$_RecipesInformation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      readyInMinutes: null == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RecipesInformation implements _RecipesInformation {
  const _$_RecipesInformation(
      {required this.id,
      required this.title,
      required this.image,
      required this.readyInMinutes});

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;
  @override
  final int readyInMinutes;

  @override
  String toString() {
    return 'RecipesInformation(id: $id, title: $title, image: $image, readyInMinutes: $readyInMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipesInformation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                other.readyInMinutes == readyInMinutes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, readyInMinutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipesInformationCopyWith<_$_RecipesInformation> get copyWith =>
      __$$_RecipesInformationCopyWithImpl<_$_RecipesInformation>(
          this, _$identity);
}

abstract class _RecipesInformation implements RecipesInformation {
  const factory _RecipesInformation(
      {required final int id,
      required final String title,
      required final String image,
      required final int readyInMinutes}) = _$_RecipesInformation;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  int get readyInMinutes;
  @override
  @JsonKey(ignore: true)
  _$$_RecipesInformationCopyWith<_$_RecipesInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recipes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetRecipesModel _$$_GetRecipesModelFromJson(Map<String, dynamic> json) =>
    _$_GetRecipesModel(
      title: json['title'] as String,
      image: json['image'] as String,
      id: json['id'] as int,
      readyInMinutes: json['readyInMinutes'] as int,
    );

Map<String, dynamic> _$$_GetRecipesModelToJson(_$_GetRecipesModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'id': instance.id,
      'readyInMinutes': instance.readyInMinutes,
    };

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/recipes_information.dart';

part 'get_recipes_model.freezed.dart';

part 'get_recipes_model.g.dart';

@freezed
class GetRecipesModel with _$GetRecipesModel {
  const factory GetRecipesModel({
    required String title,
    required String image,
    required String summary,
    required int id,
    required int readyInMinutes,
  }) = _GetRecipesModel;

  factory GetRecipesModel.fromJson(Map<String, dynamic> json) =>
      _$GetRecipesModelFromJson(json);

  factory GetRecipesModel.fromEntity(RecipesInformation recipesInformation) =>
      GetRecipesModel(
        id: recipesInformation.id,
        readyInMinutes: recipesInformation.readyInMinutes,
        title: recipesInformation.title,
        summary: recipesInformation.summary,
        image: recipesInformation.image,
      );
}

extension GetRecipesModelX on GetRecipesModel {
  RecipesInformation toEntity() => RecipesInformation(
      id: id,
      image: image,
      title: title,
      summary: summary,
      readyInMinutes: readyInMinutes);
}

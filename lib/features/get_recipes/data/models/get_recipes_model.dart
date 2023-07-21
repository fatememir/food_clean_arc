import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/recipes_information.dart';


part 'get_recipes_model.freezed.dart';
part 'get_recipes_model.g.dart';

@freezed
class GetRecipesModel with _$GetRecipesModel {
  const factory GetRecipesModel({
    required String title,
    required String image,
    required int id,
    required int readyInMinutes,
  }) = _GetRecipesModel;

  factory GetRecipesModel.fromJson(Map<String, dynamic> json) =>
      _$GetRecipesModelFromJson(json);

  factory GetRecipesModel.fromEntity(RecipesInformation recipesInformation) => GetRecipesModel(
    id: recipesInformation.id,
    readyInMinutes: recipesInformation.readyInMinutes,
    title: recipesInformation.title,
    image: recipesInformation.image,
  );
}

extension GetRecipesModelX on GetRecipesModel {
  RecipesInformation toEntity() => RecipesInformation(
    id: id,
    image: image,
    title: title,
    readyInMinutes: readyInMinutes
  );
}







// class GetRecipesModel extends RecipesInformation {
//   const GetRecipesModel({
//     required String title,
//     required String image,
//     required int id,
//     required int readyInMinutes,
//   }) : super(
//             title: title, image: image, id: id, readyInMinutes: readyInMinutes);
//
//   factory GetRecipesModel.fromJson(Map<String, dynamic> json) {
//     //num is both for int and double
//     return GetRecipesModel(
//       title: json['title'],
//       image: json['image'],
//       id: (json['id'] as num).toInt(),
//       readyInMinutes: (json['readyInMinutes'] as num).toInt(),
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'image': image,
//       'id': id,
//       'readyInMinutes': readyInMinutes,
//     };
//   }
// }

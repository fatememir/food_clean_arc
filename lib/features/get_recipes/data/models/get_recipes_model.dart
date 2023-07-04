import '../../domain/entities/recipes_information.dart';

class GetRecipesModel extends RecipesInformation {
  const GetRecipesModel({
    required String title,
    required String image,
    required int id,
    required int readyInMinutes,
  }) : super(
            title: title, image: image, id: id, readyInMinutes: readyInMinutes);

  factory GetRecipesModel.fromJson(Map<String, dynamic> json) {
    //num is both for int and double
    return GetRecipesModel(
      title: json['title'],
      image: json['image'],
      id: (json['id'] as num).toInt(),
      readyInMinutes: (json['readyInMinutes'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image': image,
      'id': id,
      'readyInMinutes': readyInMinutes,
    };
  }
}

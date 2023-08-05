import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes_information.freezed.dart';

@freezed
class RecipesInformation with _$RecipesInformation {
  const factory RecipesInformation({
    required int id,
    required String title,
    required String image,
    required String summary,
    required int readyInMinutes,
  }) = _RecipesInformation;
}

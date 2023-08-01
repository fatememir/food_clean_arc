import 'package:food_clean_arc/features/get_recipes/domain/entities/recipes_information.dart';

class RecipesDetailScreenModel {
  final RecipesInformation recipesInformation ;
  final int index;

  RecipesDetailScreenModel({
    required this.recipesInformation,
    required this.index
});

}
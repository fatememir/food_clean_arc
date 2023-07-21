part of 'get_recipes_bloc.dart';

@freezed
class GetRecipesBlocEvent with _$GetRecipesBlocEvent {
  const factory GetRecipesBlocEvent.getRecipes() = _GetRecipes;
}



part of 'get_recipes_bloc.dart';


@freezed
class GetRecipesBlocState with _$GetRecipesBlocState {
  const factory GetRecipesBlocState.initial() = _Initial;

  const factory GetRecipesBlocState.loading() = _Loading;

  const factory GetRecipesBlocState.loaded(List<RecipesInformation> recipesInformationList) = _Loaded;

  const factory GetRecipesBlocState.error(String message) = _Error;
}

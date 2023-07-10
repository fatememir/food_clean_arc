import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/recipes_information.dart';

@immutable
abstract class GetRecipesBlocState extends Equatable {
  @override
  List<Object> get props => [];
}

class Initial extends GetRecipesBlocState {}

class Loading extends GetRecipesBlocState {}

class Loaded extends GetRecipesBlocState {
  final List<RecipesInformation> recipesInformationList;

  Loaded({required this.recipesInformationList});

  @override
  List<Object> get props => [recipesInformationList];
}

class Error extends GetRecipesBlocState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}
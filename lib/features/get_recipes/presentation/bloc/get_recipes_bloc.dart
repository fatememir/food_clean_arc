import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/recipes_information.dart';
import '../../domain/usecases/get_recipes.dart';
import './bloc.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';

class GetRecipesBloc extends Bloc<GetRecipesBlocEvent, GetRecipesBlocState> {
  final GetRecipesInformation getRecipesInformation;

  GetRecipesBloc({
    required this.getRecipesInformation,
  }) : super(Initial());

  Stream<GetRecipesBlocState> mapEventToState(
    GetRecipesBlocEvent event,
  ) async* {
    if (event is GetRecipes) {
      yield Loading();
      final failureOrSuccess = await getRecipesInformation(NoParams());
      yield* _eitherLoadedOrErrorState(failureOrSuccess);
    }
  }

  Stream<GetRecipesBlocState> _eitherLoadedOrErrorState(
    Either<Failure, RecipesInformation> failureOrTrivia,
  ) async* {
    yield failureOrTrivia.fold(
      (failure) => Error(message: _mapFailureToMessage(failure)),
      (recipesInformation) => Loaded(recipesInformation: recipesInformation),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}

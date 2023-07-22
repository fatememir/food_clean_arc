import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/recipes_information.dart';
import '../../domain/usecases/get_recipes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_recipes_event.dart';

part 'get_recipes_state.dart';

part 'get_recipes_bloc.freezed.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';

@injectable
class GetRecipesBloc extends Bloc<GetRecipesBlocEvent, GetRecipesBlocState> {
  final GetRecipesInformation getRecipesInformation;

  GetRecipesBloc({
    required this.getRecipesInformation,
  }) : super(const GetRecipesBlocState.initial()) {
    on<_GetRecipes>(getRecipes);
  }

  Future<void> getRecipes(
    _GetRecipes event,
    Emitter<GetRecipesBlocState> emit,
  ) async {
    emit(
      const GetRecipesBlocState.loading(),
    );
    final failureOrSuccess = await getRecipesInformation(NoParams());
    failureOrSuccess.fold(
        (l) => emit(GetRecipesBlocState.error(_mapFailureToMessage(l))),
        (r) => emit(GetRecipesBlocState.loaded(r)));
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

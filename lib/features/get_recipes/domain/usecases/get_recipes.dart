import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/recipes_information.dart';
import '../repositories/get_recipes_repository.dart';

class GetRecipesInformation implements UseCase<RecipesInformation, NoParams> {
  final GetRecipesRepository repository;

  GetRecipesInformation(this.repository);

  @override
  Future<Either<Failure, RecipesInformation>> call(NoParams params) async {
    return await repository.getRecipes();
  }
}

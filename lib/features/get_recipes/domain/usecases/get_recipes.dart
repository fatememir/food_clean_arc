import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/recipes_information.dart';
import '../repositories/get_recipes_repository.dart';

@lazySingleton
class GetRecipesInformation implements UseCase<List<RecipesInformation>, NoParams> {
  final GetRecipesRepository repository;

  GetRecipesInformation(this.repository);

  @override
  Future<Either<Failure, List<RecipesInformation>>> call(NoParams params) async {
    return await repository.getRecipes();
  }
}

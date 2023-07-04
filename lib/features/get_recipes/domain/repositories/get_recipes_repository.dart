import 'package:dartz/dartz.dart';
import 'package:food_clean_arc/core/error/failures.dart';

import '../entities/recipes_information.dart';

abstract class GetRecipesRepository {
  Future<Either<Failure, RecipesInformation>> getRecipes();
}

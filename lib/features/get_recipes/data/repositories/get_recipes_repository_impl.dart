import 'package:dartz/dartz.dart';
import 'package:food_clean_arc/features/get_recipes/domain/entities/recipes_information.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/get_recipes_repository.dart';
import '../datasources/get_recipes_remote_datasource.dart';

class GetRecipesRepositoryImpl implements GetRecipesRepository {
  final GetRecipesRemoteDataSource remoteDataSource;

  // final GetRecipesLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  GetRecipesRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, RecipesInformation>> getRecipes() {
    // TODO: implement getRecipes
    throw UnimplementedError();
  }
}

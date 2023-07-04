import 'package:dartz/dartz.dart';
import 'package:food_clean_arc/core/error/exception.dart';
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
  Future<Either<Failure, RecipesInformation>> getRecipes() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteRecipes = await remoteDataSource.getRecipes();
        //save data in DB here
        return Right(remoteRecipes);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(CacheFailure());
      // try{
      //   final localRecipes = await localDataSource.getRecipes();
      //   return Right(localRecipes);
      // }on CacheException{
      //   return Left(CacheFailure());
      // }
    }
  }
}

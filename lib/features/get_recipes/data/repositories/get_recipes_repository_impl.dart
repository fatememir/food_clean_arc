import 'package:dartz/dartz.dart';
import 'package:food_clean_arc/core/error/exception.dart';
import 'package:food_clean_arc/features/get_recipes/data/models/get_recipes_model.dart';
import 'package:food_clean_arc/features/get_recipes/domain/entities/recipes_information.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/get_recipes_repository.dart';
import '../datasources/get_recipes_remote_datasource.dart';

@LazySingleton(as: GetRecipesRepository)
class GetRecipesRepositoryImpl implements GetRecipesRepository {
  final GetRecipesRemoteDataSource remoteDataSource;

  // final GetRecipesLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  GetRecipesRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<RecipesInformation>>> getRecipes() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteRecipes = await remoteDataSource.getRecipes();
        //save data in DB here
        final entities = remoteRecipes.map<RecipesInformation>((e) => e.toEntity()).toList();
        return Right(entities);
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

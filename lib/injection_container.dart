import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'core/network/network_info.dart';
import 'features/get_recipes/data/datasources/get_recipes_remote_datasource.dart';
import 'features/get_recipes/data/repositories/get_recipes_repository_impl.dart';
import 'features/get_recipes/domain/usecases/get_recipes.dart';
import 'features/get_recipes/presentation/bloc/get_recipes_bloc.dart';

//sl => service locator
final sl = GetIt.instance;

Future<void> init() async {
  //! Features - get recipes
  // Bloc
  sl.registerFactory(() => GetRecipesBloc(getRecipesInformation: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetRecipesInformation(sl()));

  // Repository
  sl.registerLazySingleton<GetRecipesRepositoryImpl>(
    () => GetRecipesRepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<GetRecipesRemoteDataSource>(
    () => GetRecipesRemoteDataSourceImpl(client: sl()),
  );

  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}

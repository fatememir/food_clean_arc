// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

import '../../features/get_recipes/data/datasources/get_recipes_remote_datasource.dart'
    as _i4;
import '../../features/get_recipes/data/repositories/get_recipes_repository_impl.dart'
    as _i8;
import '../../features/get_recipes/domain/repositories/get_recipes_repository.dart'
    as _i7;
import '../../features/get_recipes/domain/usecases/get_recipes.dart' as _i9;
import '../../features/get_recipes/presentation/bloc/get_recipes_bloc.dart'
    as _i10;
import '../network/network_info.dart' as _i6;
import 'register_module.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.Client>(() => registerModule.httpClient);
    gh.lazySingleton<_i4.GetRecipesRemoteDataSource>(
        () => _i4.GetRecipesRemoteDataSourceImpl(gh<_i3.Client>()));
    gh.lazySingleton<_i5.InternetConnectionChecker>(
        () => registerModule.connectionChecker);
    gh.lazySingleton<_i6.NetworkInfo>(
        () => _i6.NetworkInfoImpl(gh<_i5.InternetConnectionChecker>()));
    gh.lazySingleton<_i7.GetRecipesRepository>(
        () => _i8.GetRecipesRepositoryImpl(
              remoteDataSource: gh<_i4.GetRecipesRemoteDataSource>(),
              networkInfo: gh<_i6.NetworkInfo>(),
            ));
    gh.lazySingleton<_i9.GetRecipesInformation>(
        () => _i9.GetRecipesInformation(gh<_i7.GetRecipesRepository>()));
    gh.factory<_i10.GetRecipesBloc>(() => _i10.GetRecipesBloc(
        getRecipesInformation: gh<_i9.GetRecipesInformation>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}

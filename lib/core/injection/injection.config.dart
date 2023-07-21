// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:food_clean_arc/core/injection/register_module.dart' as _i11;
import 'package:food_clean_arc/core/network/network_info.dart' as _i7;
import 'package:food_clean_arc/features/get_recipes/data/datasources/get_recipes_remote_datasource.dart'
    as _i3;
import 'package:food_clean_arc/features/get_recipes/data/repositories/get_recipes_repository_impl.dart'
    as _i6;
import 'package:food_clean_arc/features/get_recipes/domain/repositories/get_recipes_repository.dart'
    as _i5;
import 'package:food_clean_arc/features/get_recipes/domain/usecases/get_recipes.dart'
    as _i9;
import 'package:food_clean_arc/features/get_recipes/presentation/bloc/get_recipes_bloc.dart'
    as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;

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
    gh.lazySingleton<_i3.GetRecipesRemoteDataSource>(
        () => _i3.GetRecipesRemoteDataSourceImpl(gh<_i4.Client>()));
    gh.lazySingleton<_i5.GetRecipesRepository>(
        () => _i6.GetRecipesRepositoryImpl(
              remoteDataSource: gh<_i3.GetRecipesRemoteDataSource>(),
              networkInfo: gh<_i7.NetworkInfo>(),
            ));
    gh.lazySingleton<_i8.InternetConnectionChecker>(
        () => registerModule.connectionChecker);
    gh.lazySingleton<_i9.GetRecipesInformation>(
        () => _i9.GetRecipesInformation(gh<_i5.GetRecipesRepository>()));
    gh.factory<_i10.GetRecipesBloc>(() => _i10.GetRecipesBloc(
        getRecipesInformation: gh<_i9.GetRecipesInformation>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}

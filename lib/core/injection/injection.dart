import 'package:food_clean_arc/core/injection/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';



final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) async {
   await $initGetIt(getIt, environment: env);
}

// final GetIt getIt = GetIt.instance;
//
// @injectableInit
// Future<void> configureInjection(String env) async {
//    getIt.init();
// }


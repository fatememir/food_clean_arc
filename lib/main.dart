import 'package:flutter/material.dart';
import 'core/injection/injection.dart';
import 'core/utils/bloc_providers.dart';
import 'core/rout/routing.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildBlocProviders(
        child: MaterialApp.router(
      title: "Food",
      themeMode: ThemeMode.system,
          routerConfig: router,
    ));
  }
}

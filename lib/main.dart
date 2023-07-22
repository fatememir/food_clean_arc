import 'package:flutter/material.dart';
import 'core/injection/injection.dart';
import 'core/utils/bloc_providers.dart';
import 'features/get_recipes/presentation/pages/recipes_page.dart';

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
        child: MaterialApp(
      title: "Food",
      themeMode: ThemeMode.system,
      home: RecipesPage(),
    ));
  }
}

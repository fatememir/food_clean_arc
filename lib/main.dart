import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'core/injection/injection.dart';
import 'features/get_recipes/presentation/bloc/get_recipes_bloc.dart';
import 'features/get_recipes/presentation/pages/recipes_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<GetRecipesBloc>(
        create: (_) => getIt(),
        child: RecipesPage(),
      ),
    );
    //   _buildBlocProviders(child:  MaterialApp(
    //   title: 'Number Trivia',
    //   theme: ThemeData(
    //     primaryColor: Colors.green.shade800,
    //   ),
    //   // home: const RecipesPage(),
    // ));

  }

  Widget _buildBlocProviders({
    required Widget child,
  }) {
    return MultiBlocProvider(
      providers: [

        BlocProvider<GetRecipesBloc>(
          create: (_) => getIt(),
          child: const RecipesPage(),
        ),
        //
        // BlocProvider(
        //   create: (context) => GetRecipesBloc(getRecipesInformation: GetRecipesInformation());
        // ),
      ],
      child: child,
    );
  }
}
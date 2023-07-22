import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/get_recipes/domain/usecases/get_recipes.dart';
import '../../features/get_recipes/presentation/bloc/get_recipes_bloc.dart';
import '../../features/get_recipes/presentation/pages/recipes_page.dart';
import '../injection/injection.dart';

// import 'core/injection/injection.dart';
Widget _buildBlocProviders({
  required Widget child,
}) {
  return MultiBlocProvider(
    providers: [
      BlocProvider<GetRecipesBloc>(
        create: (_) => getIt(),
        child: RecipesPage(),
      ),
      //
      // BlocProvider(
      //   create: (context) => GetRecipesBloc(getRecipesInformation: GetRecipesInformation());
      // ),
    ],
    child: child,
  );
}

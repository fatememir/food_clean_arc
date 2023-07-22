import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/get_recipes/presentation/bloc/get_recipes_bloc.dart';
import '../../features/get_recipes/presentation/pages/recipes_page.dart';
import '../injection/injection.dart';

class BuildBlocProviders extends StatelessWidget {
  final Widget child;

  const BuildBlocProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return _buildBlocProviders(child: child);
  }
}

Widget _buildBlocProviders({
  required Widget child,
}) {
  return MultiBlocProvider(
    providers: [
      BlocProvider<GetRecipesBloc>(
        create: (_) => getIt(),
        child: RecipesPage(),
      ),
    ],
    child: child,
  );
}

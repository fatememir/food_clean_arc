import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/recipes_information.dart';
import '../bloc/get_recipes_bloc.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/loading_widget.dart';
import '../widgets/message_display.dart';
import '../widgets/recipes_list_display.dart';
import '../widgets/static_banner.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  @override
  void initState() {
    context.read<GetRecipesBloc>().add(
          const GetRecipesBlocEvent.getRecipes(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(child: buildBody(context)),
    );
  }

  Widget buildBody(BuildContext context) {
    return BlocBuilder<GetRecipesBloc, GetRecipesBlocState>(
      builder: (context, state) {
        return state.when(
            initial: () => const MessageDisplay(
                  message: 'Welcome!',
                ),
            loading: () => const LoadingWidget(),
            loaded: (recipesList) => successBody(recipesList),
            error: (String message) {
              return MessageDisplay(
                message: message,
              );
            });
      },
    );
  }

  Widget successBody(List<RecipesInformation> recipesList) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const AppbarWidget(),
          const SizedBox(
            height: 32,
          ),
          const StaticBanner(),
          const SizedBox(
            height: 32,
          ),
          _buildListTitle(),
          const SizedBox(
            height: 16,
          ),
          RecipesListDisplay(recipesInformationList: recipesList),
        ],
      ),
    );
  }

  Widget _buildListTitle() {
    return const Text(
      "Based on the type of food you like ",
      style: TextStyle(fontWeight: FontWeight.w500),
    );
  }
}

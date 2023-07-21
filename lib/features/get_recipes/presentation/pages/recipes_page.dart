import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/get_recipes_bloc.dart';
import '../widgets/loading_widget.dart';
import '../widgets/message_display.dart';
import '../widgets/recipes_list_display.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      body:
         buildBody(context),

    );
  }

  Widget buildBody(BuildContext context) {
    return  BlocBuilder<GetRecipesBloc, GetRecipesBlocState>(
        builder: (context, state) {
          return state.when(
              initial: () => const MessageDisplay(
                message: 'Welcome!',
              ),
              loading: () => const LoadingWidget(),
              loaded: (recipesList) => RecipesListDisplay(
                  recipesInformationList: recipesList), error: (String message) {
                return  MessageDisplay(
                  message: message,
                );
          } );
        },
    );

  }
}


import 'package:food_clean_arc/features/get_recipes/presentation/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
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
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  BlocProvider<GetRecipesBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<GetRecipesBloc>(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10),
              // Top half
              BlocBuilder<GetRecipesBloc, GetRecipesBlocState>(
                builder: (context, state) {
                  if (state is Initial) {
                    return const MessageDisplay(
                      message: 'Start searching!',
                    );
                  } else if (state is Loading) {
                    return const LoadingWidget();
                  } else if (state is Loaded) {
                    return RecipesListDisplay(
                        recipesInformationList: state.recipesInformation);
                  } else if (state is Error) {
                    return MessageDisplay(
                      message: state.message,
                    );
                  } else {
                    return const MessageDisplay(
                      message: 'Unexpected error',
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

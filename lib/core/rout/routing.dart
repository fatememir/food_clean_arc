import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../features/get_recipes/presentation/pages/recipes_detail_page.dart';
import '../../features/get_recipes/presentation/pages/recipes_page.dart';
import '../utils/recipes_detail_screen_model.dart';

/// The route configuration.

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const RecipesPage();
      },
    ),
    GoRoute(
      path: '/recipesDetail',
      builder: (BuildContext context, GoRouterState state) {
        var param = state.extra! as RecipesDetailScreenModel;
        return RecipesDetailPage(recipesDetailScreenModel: param);
      },
    ),
  ],
);

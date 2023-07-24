import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../features/get_recipes/presentation/pages/recipes_page.dart';

/// The route configuration.

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return RecipesPage();
      },
    ),
  ],
);

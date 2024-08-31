import 'package:flutter/material.dart';
import 'package:flutter_lists_3/entities/recipe.dart';
import 'package:flutter_lists_3/presentation/screens/recipe_details_screen.dart';
import 'package:flutter_lists_3/presentation/screens/recipes_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      name: RecipesScreen.name,
      path: '/',
      builder: (context, state) => RecipesScreen(),
    ),
    GoRoute(
      name: RecipeDetailScreen.name,
      path: '/recipe-details',
      builder: (context, state) {
        // movieId as path parameter, like this: /movie-details/1
        Recipe recipe = state.extra as Recipe;
        return RecipeDetailScreen(recipe: recipe);
      },
    ),
  ],
);

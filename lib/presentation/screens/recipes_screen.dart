import 'package:flutter/material.dart';
import 'package:flutter_lists_3/presentation/screens/recipe_details_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_lists_3/core/data/recipe_datasource.dart';
import 'package:flutter_lists_3/entities/recipe.dart';
import 'package:flutter_lists_3/presentation/widgets/recipe_item.dart';

class RecipesScreen extends StatelessWidget {
  static const String name = 'recipes_screen';
  final List<Recipe> recipeList = recipes;

  RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      body: const _RecipesView(),
    );
  }
}

class _RecipesView extends StatelessWidget {
  const _RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return RecipeItem(
          recipe: recipe,
          onTap: () => _goToRecipeDetails(context, recipe),
        );
      },
    );
  }

  void _goToRecipeDetails(BuildContext context, Recipe recipe) {
    context.pushNamed(RecipeDetailScreen.name, extra: recipe);
  }
}

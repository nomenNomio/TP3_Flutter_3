import 'package:flutter/material.dart';
import 'package:flutter_lists_3/entities/recipe.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({
    super.key,
    required this.recipe,
  });

  static const String name = 'recipe_details_screen';
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Details'),
      ),
      body: _RecipeDetailView(recipe: recipe),
    );
  }
}

class _RecipeDetailView extends StatelessWidget {
  const _RecipeDetailView({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (recipe.imageUrl != null)
              Container(
                padding: EdgeInsets.all(30),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(recipe.imageUrl!)),
              ),
            const SizedBox(height: 16),
            Text(
              recipe.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'Servings: ${recipe.servings}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Cooking Time: ${recipe.cookingTime}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Ingredients:",
                    style: Theme.of(context).textTheme.titleLarge)),
            Container(
              padding: EdgeInsets.all(20),
              child: Expanded(
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: recipe.ingredients.length,
                    itemBuilder: (context, index) {
                      final ingredient = recipe.ingredients[index];
                      return Center(child: Text(ingredient));
                    }),
              ),
            ),
            Text("Steps:", style: Theme.of(context).textTheme.titleLarge),
            Container(
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: recipe.instructions.length,
                  itemBuilder: (context, index) {
                    final paso = recipe.instructions[index];
                    return Container(
                        margin: EdgeInsets.all(3),
                        child: Text("${index + 1}. $paso",
                            textAlign: TextAlign.justify));
                  }),
            )
          ],
        ),
      ),
    );
  }
}

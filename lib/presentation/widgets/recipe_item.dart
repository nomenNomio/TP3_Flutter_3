import 'package:flutter/material.dart';
import 'package:flutter_lists_3/entities/recipe.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({
    super.key,
    required this.recipe,
    this.onTap,
  });

  final Recipe recipe;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: recipe.imageUrl != null
            ? _getPoster(recipe.imageUrl!)
            : const Icon(Icons.image),
        title: Text(recipe.name),
        subtitle: Text('Director: ${recipe.category}'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => onTap?.call(),
      ),
    );
  }

  Widget _getPoster(String posterUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        posterUrl,
        width: 50,
        height: 50,
      ),
    );
  }
}

class Recipe {
  String name;
  List<String> ingredients;
  List<String> instructions;
  int cookingTime;
  int servings;
  String category;
  String difficultyLevel;
  String? imageUrl;

  Recipe({
    required this.name,
    required this.ingredients,
    required this.instructions,
    required this.cookingTime,
    required this.servings,
    required this.category,
    required this.difficultyLevel,
    this.imageUrl,
  });
}

import 'package:flutter_lists_3/entities/recipe.dart';

final List<Recipe> recipes = [
  Recipe(
    name: 'Spaghetti Carbonara',
    ingredients: [
      'Spaghetti',
      'Eggs',
      'Parmesan cheese',
      'Pancetta',
      'Garlic',
      'Black pepper'
    ],
    instructions: [
      'Cook spaghetti according to package instructions.',
      'In a pan, cook pancetta with garlic until crispy.',
      'Mix eggs and Parmesan cheese in a bowl.',
      'Combine cooked spaghetti with pancetta and remove from heat.',
      'Stir in egg mixture quickly to create a creamy sauce.',
      'Season with black pepper and serve.'
    ],
    cookingTime: 20,
    servings: 4,
    category: 'Main Course',
    difficultyLevel: 'Medium',
    imageUrl:
        'https://www.thespruceeats.com/thmb/p2TetBhg_02178d5QsHhqhneCoE=/3888x2592/filters:no_upscale():max_bytes(150000):strip_icc()/italian-food--pasta-alla-carbonara-111648900-5a4fd617ec2f640037f8cf3d.jpg',
  ),
  Recipe(
    name: 'Classic Caesar Salad',
    ingredients: [
      'Romaine lettuce',
      'Caesar dressing',
      'Croutons',
      'Parmesan cheese',
      'Lemon juice'
    ],
    instructions: [
      'Chop the Romaine lettuce and place it in a bowl.',
      'Add Caesar dressing and toss to coat.',
      'Top with croutons and Parmesan cheese.',
      'Drizzle with lemon juice and serve.'
    ],
    cookingTime: 10,
    servings: 2,
    category: 'Salad',
    difficultyLevel: 'Easy',
    imageUrl:
        'https://www.thespruceeats.com/thmb/nXVy3WHyN1DukgK9GkYV7kFadY4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/classic-caesar-salad-recipe-996054-Hero_01-33c94cc8b8e841ee8f2a815816a0af95.jpg',
  ),
  Recipe(
    name: 'Chicken Tikka Masala',
    ingredients: [
      'Chicken breasts',
      'Yogurt',
      'Tikka masala paste',
      'Tomato sauce',
      'Cream',
      'Rice'
    ],
    instructions: [
      'Marinate chicken in yogurt and tikka masala paste for at least 1 hour.',
      'Grill or cook chicken until fully cooked.',
      'In a pan, heat tomato sauce and stir in cream.',
      'Add cooked chicken to the sauce and simmer for 10 minutes.',
      'Serve with rice.'
    ],
    cookingTime: 40,
    servings: 4,
    category: 'Main Course',
    difficultyLevel: 'Hard',
    imageUrl:
        'https://www.seriouseats.com/thmb/fMfwR6_SOluWtgc7zHdzg3NQ3Ck=/1500x1125/filters:fill(auto,1)/chicken-tikka-masala-for-the-grill-recipe-hero-2_1-cb493f49e30140efbffec162d5f2d1d7.JPG',
  ),
  Recipe(
    name: 'Chocolate Chip Cookies',
    ingredients: [
      'Flour',
      'Butter',
      'Sugar',
      'Brown sugar',
      'Eggs',
      'Chocolate chips',
      'Vanilla extract'
    ],
    instructions: [
      'Preheat oven to 350°F (175°C).',
      'Mix butter, sugar, and brown sugar until creamy.',
      'Add eggs and vanilla extract, mix well.',
      'Stir in flour and chocolate chips.',
      'Drop spoonfuls of dough onto a baking sheet and bake for 10-12 minutes.'
    ],
    cookingTime: 30,
    servings: 24,
    category: 'Dessert',
    difficultyLevel: 'Easy',
    imageUrl:
        'https://www.modernhoney.com/wp-content/uploads/2017/11/Thin-and-Crispy-Chocolate-Chip-Cookies-2.jpg',
  ),
  Recipe(
    name: 'Vegetable Stir-Fry',
    ingredients: [
      'Broccoli',
      'Carrots',
      'Bell peppers',
      'Soy sauce',
      'Garlic',
      'Ginger',
      'Rice'
    ],
    instructions: [
      'Chop vegetables into bite-sized pieces.',
      'In a pan, heat oil and sauté garlic and ginger.',
      'Add vegetables and stir-fry until tender.',
      'Add soy sauce and cook for another 2 minutes.',
      'Serve over rice.'
    ],
    cookingTime: 20,
    servings: 3,
    category: 'Main Course',
    difficultyLevel: 'Easy',
    imageUrl: 'http://sisijemimah.com/wp-content/uploads/2017/02/IMG_8966.jpg',
  ),
];

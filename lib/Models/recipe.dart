import 'package:myapp/Models/ingredient.dart';

class Recipe {
  final String imageUrl;     // Path of the image asset
  final String imgLabel;     // Recipe name
  final String description;  // Recipe description
  final List<Ingredient> ingredients;

  Recipe(
    this.imageUrl,
    this.imgLabel,
    this.description,
    this.ingredients,
  );

  static List<Recipe> samples = [
    Recipe(
      'assets/images/Green curry.webp',
      'Green Curry',
      'A rich and spicy Thai green curry made with coconut milk, fresh herbs, and vegetables.',
      [
        Ingredient(name: 'Chicken breast', quantity: 300, unit: 'g'),
        Ingredient(name: 'Green curry paste', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Coconut milk', quantity: 2, unit: 'cups'),
        Ingredient(name: 'Thai eggplant', quantity: 4, unit: ''),
        Ingredient(name: 'Kaffir lime leaves', quantity: 3, unit: ''),
        Ingredient(name: 'Fish sauce', quantity: 1, unit: 'tbsp'),
        Ingredient(name: 'Palm sugar', quantity: 1, unit: 'tsp'),
        Ingredient(name: 'Thai basil', quantity: 1, unit: 'handful'),
      ],
    ),
    Recipe(
      'assets/images/Pad Thai.webp',
      'Pad Thai',
      'A classic Thai stir-fried noodle dish with a sweet, sour, and savory sauce, topped with peanuts.',
      [
        Ingredient(name: 'Rice noodles', quantity: 200, unit: 'g'),
        Ingredient(name: 'Eggs', quantity: 2, unit: ''),
        Ingredient(name: 'Bean sprouts', quantity: 100, unit: 'g'),
        Ingredient(name: 'Tofu', quantity: 150, unit: 'g'),
        Ingredient(name: 'Fish sauce', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Palm sugar', quantity: 1, unit: 'tbsp'),
        Ingredient(name: 'Peanuts', quantity: 2, unit: 'tbsp'),
      ],
    ),
    Recipe(
      'assets/images/Pumpkin Curry.webp',
      'Pumpkin Curry',
      'A creamy Thai curry cooked with tender pumpkin, coconut milk, and aromatic spices.',
      [
        Ingredient(name: 'Pumpkin', quantity: 300, unit: 'g'),
        Ingredient(name: 'Red curry paste', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Coconut milk', quantity: 2, unit: 'cups'),
        Ingredient(name: 'Chicken thigh', quantity: 250, unit: 'g'),
        Ingredient(name: 'Fish sauce', quantity: 1, unit: 'tbsp'),
        Ingredient(name: 'Palm sugar', quantity: 1, unit: 'tsp'),
        Ingredient(name: 'Thai basil', quantity: 1, unit: 'handful'),
      ],
    ),
    Recipe(
      'assets/images/Crying tiger beef salad.webp',
      'Crying Tiger Beef Salad',
      'A spicy and tangy Thai grilled beef salad mixed with herbs, lime juice, and roasted rice powder.',
      [
        Ingredient(name: 'Grilled beef', quantity: 300, unit: 'g'),
        Ingredient(name: 'Shallots', quantity: 3, unit: ''),
        Ingredient(name: 'Mint leaves', quantity: 1, unit: 'handful'),
        Ingredient(name: 'Coriander', quantity: 1, unit: 'handful'),
        Ingredient(name: 'Roasted rice powder', quantity: 1, unit: 'tbsp'),
        Ingredient(name: 'Fish sauce', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Lime juice', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Chili flakes', quantity: 1, unit: 'tsp'),
      ],
    ),
  ];
}

import 'package:flutter/material.dart';
import 'package:livetest14/model/recipe.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final String data = '''
  [
    {"id":1,"title":"Chicken Biryani","description":"Aromatic basmati...","calories":550},
    {"id":2,"title":"Beef Curry","description":"Slow-cooked beef...","calories":620},
    {"id":3,"title":"Vegetable Khichuri","description":"Rice and lentils...","calories":400},
    {"id":4,"title":"Pasta Alfredo","description":"Creamy white sauce...","calories":480},
    {"id":5,"title":"Grilled Sandwich","description":"Toasted sandwich...","calories":310},
    {"id":6,"title":"Chicken Fry","description":"Crispy fried chicken...","calories":530},
    {"id":7,"title":"Egg Curry","description":"Boiled eggs cooked...","calories":450},
    {"id":8,"title":"Fruit Salad","description":"Mixed seasonal fruits...","calories":250},
    {"id":9,"title":"Fried Rice","description":"Rice fried with veg...","calories":500},
    {"id":10,"title":"Mango Lassi","description":"Sweet yogurt drink...","calories":300}
  ]
  ''';
  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipeList = parseRecipes(data);
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Recipes"),
      ),
      body: ListView.builder(
          itemCount: recipeList.length,
          itemBuilder: (context, index) {
            final recipe = recipeList[index];

            return Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            recipe.id.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "${recipe.title}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "${recipe.description}",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Calories: ${recipe.calories}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

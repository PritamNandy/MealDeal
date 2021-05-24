import 'package:dailymeal/meal_item.dart';
import 'package:dailymeal/models/meal.dart';
import 'package:flutter/material.dart';
import './dummy_categories.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/categoryMeal';
  // final String title;
  // final Color color;
  // CategoryMealScreen(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final Color color = routeArgs['color'];
    final String id = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((element) {
      return element.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs['title']),
        backgroundColor: color,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            title: categoryMeals[index].title,
            imgUrl: categoryMeals[index].imageUrl,
            affordability: categoryMeals[index].affordability,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            id: categoryMeals[index].id,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}

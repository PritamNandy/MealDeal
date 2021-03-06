import 'package:dailymeal/category_item.dart';
import 'package:flutter/material.dart';

import './dummy_categories.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Meal'),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        children: DUMMY_CATEGORIES
            .map(
              (category) =>
                  CategoryItem(category.id, category.title, category.color),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}

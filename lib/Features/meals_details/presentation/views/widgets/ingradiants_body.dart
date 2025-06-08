import 'package:flutter/material.dart';
import 'package:recipes_app_new/core/models/one_mealModel.dart';

class IngradiantsBody extends StatelessWidget {
  const IngradiantsBody({
    super.key,
    required this.oneMealModel,
  });
  final OneMealModel oneMealModel;
  @override
  Widget build(BuildContext context) {
    final List<Ingredient> ingradiantList = oneMealModel.ingredients;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: ingradiantList.length,
        itemBuilder: (context, index) {
          return IngradiantItem(
            ingredient: ingradiantList[index],
          );
        },
      ),
    );
  }
}

class IngradiantItem extends StatelessWidget {
  const IngradiantItem({
    super.key,
    required this.ingredient,
  });
  final Ingredient ingredient;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 2,
      leading: const Text(
        '•',
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
      title: Text(
        ingredient.original,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

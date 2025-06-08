import 'package:flutter/material.dart';
import 'package:recipes_app_new/core/models/one_mealModel.dart';

class GridOfNutrition extends StatelessWidget {
  const GridOfNutrition({
    super.key,
    required this.oneMealModel,
  });

  final OneMealModel oneMealModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2.5,
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 0, // Horizontal space between items
          mainAxisSpacing: 0,
        ),
        children: [
          Column(
            children: [
              const Text('Calories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              Text(
                '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Calories', orElse: () => Nutrient(name: '', amount: 0, unit: 'g')).amount}  ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Calories', orElse: () => Nutrient(name: '', amount: 0, unit: 'g')).unit}',
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
          Column(
            children: [
              const Text('Carbohydrates',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              Text(
                '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Carbohydrates').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Carbohydrates').unit}',
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
          Column(
            children: [
              const Text('Fat',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              Text(
                '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fat').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fat').unit}',
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
          Column(
            children: [
              const Text('Protein',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              Text(
                '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Protein').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Protein').unit}',
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
          Column(
            children: [
              const Text('Fiber',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              Text(
                '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fiber', orElse: () => Nutrient(name: '', amount: 0, unit: 'g')).amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fiber', orElse: () => Nutrient(name: '', amount: 0, unit: 'g')).unit}',
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
          Column(
            children: [
              const Text('Sugar',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              Text(
                '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Sugar').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Sugar').unit}',
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}

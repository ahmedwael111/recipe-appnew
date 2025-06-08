import 'package:flutter/material.dart';
import 'package:recipes_app_new/core/models/one_mealModel.dart';

class RowOfInformation extends StatelessWidget {
  const RowOfInformation({super.key, required this.oneMealModel});
  final OneMealModel oneMealModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Text(
              'Servings',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Text(oneMealModel.servings.toString(),
                style: const TextStyle(fontSize: 14))
          ],
        ),
        Column(
          children: [
            const Text('Total time',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            Text(
              '${oneMealModel.readyInMinutes.toString()} min',
              style: const TextStyle(fontSize: 14),
            )
          ],
        ),
        Column(
          children: [
            const Icon(
              Icons.star, color: Colors.amber,
              size: 28,
              // color: Colors.white,
            ),
            Text(
              oneMealModel.aggregateLikes.toString(),
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}

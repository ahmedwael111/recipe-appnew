import 'package:flutter/material.dart';
import 'package:recipes_app_new/core/models/one_mealModel.dart';

class ContainerOfLink extends StatelessWidget {
  const ContainerOfLink({
    super.key,
    required this.oneMealModel,
  });

  final OneMealModel oneMealModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        // color: Colors.white,
        shape: BoxShape.rectangle, // Shape of the container (circle)
      ),
      child: Center(
        child: Text(
          oneMealModel.spoonacularSourceUrl,
          style: const TextStyle(
              color: Colors.blue,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationStyle: TextDecorationStyle.solid),
        ),
      ),
    );
  }
}

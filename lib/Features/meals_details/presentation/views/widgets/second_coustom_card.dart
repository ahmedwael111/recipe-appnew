import 'package:flutter/material.dart';

import 'package:recipes_app_new/Features/meals_details/presentation/views/oneMeal_view.dart';
import 'package:recipes_app_new/core/models/meals_model.dart';

class SecondCoustomCard extends StatelessWidget {
  const SecondCoustomCard({super.key, required this.mealsModel});
  final MealsModel mealsModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, OneMealView.id, arguments: mealsModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:
                    Theme.of(context).brightness == Brightness.dark
                        ? Colors.grey[800]!
                        : Colors.grey[400]!,
                spreadRadius: 0,
                blurRadius: 5,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      mealsModel.image,

                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        // Replace with your own placeholder asset or network URL
                        return Image.asset(
                          'assets/webvilla-hv1MrBzGGNY-unsplash.jpg',

                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 0,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      mealsModel.title,
                      style: const TextStyle(fontSize: 18),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

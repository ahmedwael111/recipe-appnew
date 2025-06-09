import 'package:flutter/material.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/container_link.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/grid_nutrition.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/row_information.dart';

import 'package:recipes_app_new/core/models/one_mealModel.dart';

class InformationBody extends StatelessWidget {
  const InformationBody({super.key, required this.oneMealModel});
  final OneMealModel oneMealModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowOfInformation(oneMealModel: oneMealModel),
            const Divider(),
            GridOfNutrition(oneMealModel: oneMealModel),
            const Divider(),
            SizedBox(height: 10),
            // Handle tap event to launch the URL
            BottomLink(oneMealModel: oneMealModel),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/information_body.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/ingradiants_body.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/instactions_body.dart';

import 'package:recipes_app_new/core/models/one_mealModel.dart';

class CoustomTabbarView extends StatelessWidget {
  const CoustomTabbarView({super.key, required this.oneMealModel});
  final OneMealModel oneMealModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          // Information tab content
          InformationBody(oneMealModel: oneMealModel),
          // Ingredients tab content
          IngradiantsBody(
            oneMealModel: oneMealModel,
          ),
          // Instructions tab content
          InstractionsBody(oneMealModel: oneMealModel)
        ],
      ),
    );
  }
}

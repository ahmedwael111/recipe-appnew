import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipes_app_new/Features/home/presentation/manager/request_meals_cubit.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/second_coustom_card.dart';
import 'package:recipes_app_new/core/models/meals_model.dart';

class GradOfMeal extends StatefulWidget {
  const GradOfMeal({super.key});

  @override
  State<GradOfMeal> createState() => _GradOfMealState();
}

class _GradOfMealState extends State<GradOfMeal> {
  List<MealsModel>? mealsList;
  @override
  Widget build(BuildContext context) {
    setState(() {
      mealsList = BlocProvider.of<RequestMealsCubit>(context).mealsList!;
    });
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GridView.builder(
        itemCount: mealsList!.length,
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.09,
          crossAxisSpacing: 0,
          mainAxisSpacing: 10,
        ),
        itemBuilder: ((context, index) {
          return SecondCoustomCard(mealsModel: mealsList![index]);
        }),
      ),
    );
    // } else {
    //   return const Text('No meals found');
    // }
  }
}

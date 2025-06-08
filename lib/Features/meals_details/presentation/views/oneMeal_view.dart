import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipes_app_new/Features/meals_details/presentation/manager/one_meal_cubit.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/meals_view.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/indicator.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/message_no_internet.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/showen_ofMeal.dart';
import 'package:recipes_app_new/core/models/meals_model.dart';

class OneMealView extends StatelessWidget {
  const OneMealView({super.key});
  static String id = 'oneMealView';
  @override
  Widget build(BuildContext context) {
    MealsModel mealsModel =
        ModalRoute.of(context)!.settings.arguments as MealsModel;
    BlocProvider.of<OneMealCubit>(context).getOneMeal(meal_id: mealsModel.id);
    return Scaffold(
      body: BlocBuilder<OneMealCubit, OneMealState>(
        builder: (context, state) {
          if (state is OneMealInitial) {
            return const InitialIcon();
          } else if (state is OneMealLoading) {
            return const Indicator();
          } else if (state is OneMealSuccess) {
            return  ShowenOfMeal();
          } else if (state is OneMealFuilure) {
            return const MessageOfNoInterNet();
          } else {
            return const Center(child: Text('try again'));
          }
        },
      ),
    );
  }
}

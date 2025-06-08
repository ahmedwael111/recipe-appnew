import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:recipes_app_new/Features/home/presentation/manager/request_meals_cubit.dart';
import 'package:recipes_app_new/Features/home/presentation/manager/request_meals_state.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/grad_ofMeals.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/indicator.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/message_no_internet.dart';
import 'package:recipes_app_new/constants.dart';

class MealsView extends StatelessWidget {
  const MealsView({super.key});
  static String id = 'MealsVeiw';

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    BlocProvider.of<RequestMealsCubit>(context).getMeals(mealName: name);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: kcolor, fontWeight: FontWeight.bold, fontSize: 26),
            ),
            const Text(
              ' Dishs',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: BlocBuilder<RequestMealsCubit, RequestMealsState>(
        builder: (context, state) {
          if (state is RequestMealsInitial) {
            return const InitialIcon();
          } else if (state is RequestMealsLoading) {
            return const Indicator();
          } else if (state is RequestMealsSuccess) {
            return   GradOfMeal();
          } else if (state is RequestMealsFaluier) {
            return const MessageOfNoInterNet();
          } else {
            return const Center(child: Text('try again'));
          }
        },
      ),
    );
  }
}

class InitialIcon extends StatelessWidget {
  const InitialIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.searchengin,
          size: 55,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Let\'s Search for Meals',
          style: TextStyle(fontSize: 18),
        )
      ],
    ));
  }
}

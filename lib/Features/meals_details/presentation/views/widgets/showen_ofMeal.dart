import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipes_app_new/Features/meals_details/presentation/manager/one_meal_cubit.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/tabBar_view.dart';
import 'package:recipes_app_new/constants.dart';
import 'package:recipes_app_new/core/models/one_mealModel.dart';

class ShowenOfMeal extends StatefulWidget {
  const ShowenOfMeal({
    super.key,
  });

  @override
  State<ShowenOfMeal> createState() => _ShowenOfMealState();
}

class _ShowenOfMealState extends State<ShowenOfMeal> {
  OneMealModel? oneMealModel;
  @override
  Widget build(BuildContext context) {
    setState(() {
      oneMealModel = BlocProvider.of<OneMealCubit>(context).oneMealModel!;
    });
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(oneMealModel!.image,
                      height: 250, width: double.infinity, fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                    // Replace with your own placeholder asset or network URL
                    return Image.asset(
                        'assets/webvilla-hv1MrBzGGNY-unsplash.jpg',
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover);
                  }),
                ),
              ],
            ),
            ListTile(
              title: Text(
                oneMealModel!.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(),
            const TabBar(
                indicatorColor: kcolor,
                indicatorWeight: 5,
                labelColor: kcolor,
                labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'Information',
                  ),
                  Tab(
                    text: 'Ingradiants',
                  ),
                  Tab(
                    text: 'Instractions',
                  )
                ]),
            // TabBarView wrapped in a fixed height container to display content
            CoustomTabbarView(
              oneMealModel: oneMealModel!,
            ),
          ],
        ),
      ),
    );
  }
}

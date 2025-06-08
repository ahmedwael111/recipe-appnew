import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipes_app_new/Features/home/presentation/manager/request_meals_cubit.dart';
import 'package:recipes_app_new/Features/home/presentation/views/home_view.dart';
import 'package:recipes_app_new/Features/home/presentation/views/splash_view.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/manager/one_meal_cubit.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/meals_view.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/oneMeal_view.dart';
import 'package:recipes_app_new/Features/search/presentation/view/search_view.dart';
import 'package:recipes_app_new/core/utils/theme_cubit_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ThemeCubitCubit(),
      child: const RecipeApp(),
    ),
  );
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RequestMealsCubit()),
        BlocProvider(create: (context) => OneMealCubit()),
      ],
      child: BlocBuilder<ThemeCubitCubit, ThemeData>(
        builder: (context, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            routes: {
              HomeView.id: (context) => const HomeView(),
              MealsView.id: (context) => const MealsView(),
              OneMealView.id: (context) => const OneMealView(),
              SearchView.id: (context) => const SearchView(),
              SplashPage.id: (context) => const SplashPage(),
            },
            initialRoute: SplashPage.id,
          );
        },
      ),
    );
  }
}

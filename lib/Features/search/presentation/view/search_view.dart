import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipes_app_new/Features/home/presentation/manager/request_meals_cubit.dart';
import 'package:recipes_app_new/Features/home/presentation/manager/request_meals_state.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/meals_view.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/grad_ofMeals.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/indicator.dart';
import 'package:recipes_app_new/Features/meals_details/presentation/views/widgets/message_no_internet.dart';
import 'package:recipes_app_new/Features/search/presentation/view/widgets/c2_text_field.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});
  static String id = 'searchView';
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const SizedBox(height: 55, child: C2Textfield()),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<RequestMealsCubit, RequestMealsState>(
                builder: (context, state) {
                  if (state is RequestMealsInitial) {
                    return const InitialIcon();
                  } else if (state is RequestMealsLoading) {
                    return const Indicator();
                  } else if (state is RequestMealsSuccess) {
                    return GradOfMeal();
                  } else if (state is RequestMealsFaluier) {
                    return const MessageOfNoInterNet();
                  } else {
                    return const Center(child: Text('try again'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

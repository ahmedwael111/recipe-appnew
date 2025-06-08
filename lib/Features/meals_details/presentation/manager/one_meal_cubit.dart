
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipes_app_new/Features/meals_details/data/one_meal_service.dart';
import 'package:recipes_app_new/core/models/one_mealModel.dart';

part 'one_meal_state.dart';

class OneMealCubit extends Cubit<OneMealState> {
  OneMealCubit() : super(OneMealInitial());
  OneMealModel? oneMealModel;
  getOneMeal({required dynamic meal_id}) async {
    log('Fetching meals for $meal_id');
    if (oneMealModel == null) {
      emit(OneMealLoading());
    }
    try {
      oneMealModel =
          await OneMealService(dio: Dio()).getOneMealsServices(mealId: meal_id);
      emit(OneMealSuccess());
    } catch (e) {
      log('Error Fetching Meals: ${e.toString()}');
      emit(OneMealFuilure(errorMessage: e.toString()));
    }
  }
}

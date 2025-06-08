import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:recipes_app_new/core/models/one_mealModel.dart';

class OneMealService {
  final Dio dio;
  final String baseUrl = 'https://api.spoonacular.com/recipes';
  final String apiKey = 'f8adf64aaf854969b823f7ed5d74ff7e';

  OneMealService({required this.dio});
  Future<OneMealModel> getOneMealsServices({required dynamic mealId}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/$mealId/information?apiKey=$apiKey&includeNutrition=true');
      log('request api : $baseUrl/$mealId/information?apiKey=$apiKey&includeNutrition=true');
      OneMealModel oneMealModel = OneMealModel.fromJson(response.data);
      return oneMealModel;
    } on DioException catch (e) {
      log('Dio Error: ${e.toString()}'); // Log the full Dio exception
     final String message = e.response?.data?['error']?['message'] ??
          'Unknown error occurred, try late';
      throw Exception(message);
    } catch (e) {
      log(e.toString());
      throw Exception('there was an error');
    }
  }
}

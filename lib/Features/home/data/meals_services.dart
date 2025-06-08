import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:recipes_app_new/core/models/meals_model.dart';

class MealsServices {
  final Dio dio;
  final String baseUrl = 'https://api.spoonacular.com/recipes';
  final String apiKey = 'f8adf64aaf854969b823f7ed5d74ff7e';

  MealsServices({required this.dio});
  Future<List<MealsModel>> getMealsServices({required String mealType}) async {
    try {
      log('requist url : $baseUrl/complexSearch?apiKey=$apiKey&query=$mealType&number=10&offset=10');
      Response response = await dio.get(
          '$baseUrl/complexSearch?apiKey=$apiKey&query=$mealType&number=10&offset=10');

      Map<String, dynamic> data = response.data;
      List<dynamic> dataList = data['results'];

      List<MealsModel> mealsList = [];
      for (var recipe in dataList) {
        MealsModel mealsObject = MealsModel.fromJson(recipe);
        mealsList.add(mealsObject);
      }
      return mealsList;
    } on DioException catch (e) {
      final String exeption = e.response?.data['error']['message'] ??
          'there was an error';
      throw Exception(exeption);
    } catch (e) {
      // log(e.toString());
      throw Exception('ther wass an error');
    }
  }
}

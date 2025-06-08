
class RequestMealsState {}

final class RequestMealsInitial extends RequestMealsState {}

final class RequestMealsLoading extends RequestMealsState {}

final class RequestMealsSuccess extends RequestMealsState {}

final class RequestMealsFaluier extends RequestMealsState {
  final String errorMessage;

  RequestMealsFaluier({required this.errorMessage});
}

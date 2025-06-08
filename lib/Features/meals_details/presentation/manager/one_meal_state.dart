part of 'one_meal_cubit.dart';


class OneMealState {}

final class OneMealInitial extends OneMealState {}

final class OneMealLoading extends OneMealState {}

final class OneMealSuccess extends OneMealState {}

final class OneMealFuilure extends OneMealState {
  final String errorMessage;

  OneMealFuilure({required this.errorMessage});
}

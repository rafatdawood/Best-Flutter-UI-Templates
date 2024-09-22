part of 'get_default_cubit.dart';

@immutable
sealed class GetDefaultState {}

final class GetDefaultInitial extends GetDefaultState {}
final class GetDefaultLoading extends GetDefaultState {}
final class GetDefaultSuccess extends GetDefaultState {
  final GetWeather weather;

  GetDefaultSuccess(this.weather);
}
final class GetDefaultFailure extends GetDefaultState {
  final String errorMessage;

  GetDefaultFailure(this.errorMessage);
}

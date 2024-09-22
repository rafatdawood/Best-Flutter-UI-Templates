import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/core/models/Get_weather.dart';
import 'package:weather_app/core/utils/api_service.dart';
import 'package:weather_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  // var units = 'metric';
  // var lang = 'en';
  // var q = 'روسيا';

  @override
  Future<Either<Failures, GetWeather>> fetchSearchWeather({
    required String units,
    required String lang,
    required String q,
  }) async {
    try {
      var data = await apiService.get(
          endPoint:
          'weather?q=$q&appid=d7cd6e03ea861ac1d2cb1f64858053ee&units=$units&lang=$lang');
      final weatherData = GetWeather.fromJson(data);
      return right(weatherData);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, GetWeather>> fetchCurrentWeather({
    required String units,
    required String lang,
    required String lat,
    required String lng,
  }) async {
    try {
      var data = await apiService.get(
          endPoint:
              'weather?lat=$lat&lon=$lng&appid=d7cd6e03ea861ac1d2cb1f64858053ee&units=$units&lang=$lang');
      final weatherData = GetWeather.fromJson(data);
      return right(weatherData);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

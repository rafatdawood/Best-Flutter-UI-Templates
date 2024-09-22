import 'package:dartz/dartz.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/core/models/Get_weather.dart';

abstract class HomeRepo {
  Future<Either<Failures, GetWeather>> fetchCurrentWeather({
    required String units,
    required String lang,
    required String lat,
    required String lng,
  }
      );
  Future<Either<Failures, GetWeather>> fetchSearchWeather({
    required String units,
    required String lang,
    required String q,
  }
      );
}

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/core/models/Get_weather.dart';
import 'package:weather_app/features/search/data/repos/search_repo.dart';

import '../../../../core/utils/api_service.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);


}

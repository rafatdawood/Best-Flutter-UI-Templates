import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_setup/cubit/weather_cubit/weather_state.dart';
import 'package:weather_app_setup/models/weather_model.dart';
import 'package:weather_app_setup/services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState>{
  WeatherCubit(this.weatherService) : super(WeatherInitial());
  WeatherService weatherService;
  WeatherModel? weatherModel;
  String? cityName;
  void getWeather({required String cityName})async{
    emit(WeatherLoading());
    try{
      weatherModel = await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess());
    }on Exception catch(e){
      emit(WeatherFailure());
    }

  }

}
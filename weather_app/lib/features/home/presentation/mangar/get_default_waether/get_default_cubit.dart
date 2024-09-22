import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/core/models/Get_weather.dart';
import 'package:weather_app/core/utils/sheard.dart';
import 'package:weather_app/features/home/data/repos/home_repo.dart';

part 'get_default_state.dart';

class GetDefaultCubit extends Cubit<GetDefaultState> {
  GetDefaultCubit(this.homeRepo) : super(GetDefaultInitial());

  final HomeRepo homeRepo;

  var q = 'giza';

  Future<void> fetchWeather([
    String units = 'metric',
    String lang = 'en',
  ]) async {
    emit(GetDefaultLoading());
    var result = await homeRepo.fetchCurrentWeather(
      units: units,
      lang: lang,
      lat: PreferenceUtils.getDouble(PrefKeys.lat).toString(),
      lng: PreferenceUtils.getDouble(PrefKeys.lng).toString(),
    );
    result.fold((failure) {
      emit(GetDefaultFailure(failure.errorMessage));
    }, (weather) {
      emit(GetDefaultSuccess(weather));
    });
  }


  Future<void> fetchSearchWeather([
    String units = 'metric',
    String lang = 'en',
  ]) async {
    emit(GetDefaultLoading());
    var result = await homeRepo.fetchSearchWeather(
      units: units,
      lang: lang,
      q: q,
    );
    result.fold((failure) {
      emit(GetDefaultFailure(failure.errorMessage));
    }, (weather) {
      emit(GetDefaultSuccess(weather));
    });
  }
}

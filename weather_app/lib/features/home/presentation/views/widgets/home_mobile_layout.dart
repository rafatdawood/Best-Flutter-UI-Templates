import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/sheard.dart';
import 'package:weather_app/core/widgets/custom_back_ground_container.dart';
import 'package:weather_app/core/widgets/custom_error_widget.dart';
import 'package:weather_app/features/home/presentation/mangar/get_default_waether/get_default_cubit.dart';
import 'package:weather_app/features/home/presentation/views/widgets/home_bottom_sheet.dart';

import 'custom_button.dart';
import 'home_header.dart';
import 'image_details.dart';
import 'weather_details.dart';

class HomeMobileLayout extends StatelessWidget {
  const HomeMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return CustomBackGroundContainer(
      child: SafeArea(
        child: BlocBuilder<GetDefaultCubit, GetDefaultState>(
          builder: (context, state) {
            if (state is GetDefaultSuccess) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HomeHeader(
                    cityName: state.weather.name!,
                  ),
                  Expanded(
                      child: ImageDetails(
                    nameImage: state.weather.weather![0].icon!,
                  )),
                  WeatherDetails(
                    temp: state.weather.main!.temp!,
                    speed: state.weather.wind!.speed!,
                    main: state.weather.weather![0].main!,
                    humidity: state.weather.main!.humidity!,
                  ),
                  SizedBox(height: height * .1),
                  GestureDetector(
                      onTap: () => showCustomBottomSheet(
                            context: context,
                            feelLike: state.weather.main!.feelsLike,
                            pressure: state.weather.main!.pressure,
                            humidity: state.weather.main!.humidity,
                            speed: state.weather.wind!.speed,
                          ),
                      child: const CustomButton()),
                ],
              );
            } else if (state is GetDefaultFailure) {
              return CustomErrorWidget(errorMessage: state.errorMessage);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  showCustomBottomSheet(
      {required context,
      required feelLike,
      required pressure,
      required humidity,
      required speed}) {
    showBottomSheet(
      context: context,
      builder: (context) => HomeBottomSheet(
        feelLike: feelLike,
        pressure: pressure,
        humidity: humidity,
        speed: speed,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/utils/app_router.dart';
import 'package:weather_app/core/utils/app_styles.dart';
import 'package:weather_app/features/home/presentation/mangar/get_default_waether/get_default_cubit.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () => navToHomeScreen(context),
          icon: const Icon(Icons.home_outlined,size: 35,),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  errorMessage,
                  style: AppStyles.overpassBold24(context),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  navToHomeScreen(context) {
    GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
    BlocProvider.of<GetDefaultCubit>(context).fetchWeather();
  }
}

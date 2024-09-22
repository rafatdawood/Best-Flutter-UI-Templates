import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/api_service.dart';
import 'package:weather_app/core/utils/service_locator.dart';
import 'package:weather_app/features/home/data/repos/home_repo_impl.dart';
import 'package:weather_app/features/home/presentation/mangar/get_default_waether/get_default_cubit.dart';
import 'package:weather_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => GetDefaultCubit(HomeRepoImpl(ApiService(Dio())))..fetchWeather(),
        // create: (context) => GetDefaultCubit(getIt.get<HomeRepoImpl>()),
        child: const HomeViewBody(),
      ),
    );
  }
}















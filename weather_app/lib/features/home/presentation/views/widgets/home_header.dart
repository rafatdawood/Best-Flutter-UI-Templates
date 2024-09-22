import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/utils/app_router.dart';
import 'package:weather_app/core/utils/app_styles.dart';
import 'package:weather_app/core/utils/assets_data.dart';
import 'package:weather_app/features/home/presentation/mangar/get_default_waether/get_default_cubit.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key, required this.cityName});
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => navToSearchPage(context),
          child: Row(
            children: [
              SvgPicture.asset(AssetsData.imageMap),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 17),
                child: Text(cityName,
                    style: AppStyles.overpassSemiBold24(context)),
              ),
              SvgPicture.asset(AssetsData.imageButtonArrow)
            ],
          ),
        ),
        SvgPicture.asset(AssetsData.imageNotification)
      ],
    );
  }

  Future<void>navToSearchPage(context)async {
    final response = await GoRouter.of(context).push(AppRouter.kSearchView);
    if(response != null){
      BlocProvider.of<GetDefaultCubit>(context).q = response.toString();
      BlocProvider.of<GetDefaultCubit>(context).fetchSearchWeather();
    }
  }
}
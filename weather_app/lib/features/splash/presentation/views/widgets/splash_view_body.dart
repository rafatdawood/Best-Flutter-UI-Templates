import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_styles.dart';



class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Get Weather",
          textAlign: TextAlign.center,
          style: AppStyles.overpassRegular72(context)
              .copyWith(color: Colors.black,),
        )
      ],
    );
  }
}

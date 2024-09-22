import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_styles.dart';

class HomeTabletLayout extends StatelessWidget {
  const HomeTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Tablet',
      style: AppStyles.overpassRegular72(context).copyWith(color: Colors.black),
    );
  }
}
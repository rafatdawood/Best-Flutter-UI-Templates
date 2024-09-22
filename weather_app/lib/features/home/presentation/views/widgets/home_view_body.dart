import 'package:flutter/material.dart';
import 'package:weather_app/core/widgets/adaptive_layout.dart';

import 'home_mobile_layout.dart';
import 'home_tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const HomeMobileLayout(),
        tabletLayout: (context) => const HomeTabletLayout());
  }
}
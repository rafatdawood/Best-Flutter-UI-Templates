import 'package:flutter/material.dart';
import 'package:weather_app/core/widgets/adaptive_layout.dart';

import 'search_mobile_layout.dart';
import 'search_tablet_layout.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const SearchMobileLayout(),
        tabletLayout: (context) => const SearchTabletLayout());
  }
}
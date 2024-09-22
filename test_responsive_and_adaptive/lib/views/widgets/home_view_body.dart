import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive/views/widgets/adaptive_layout.dart';
import 'package:test_responsive_and_adaptive/views/widgets/desktop_layout.dart';
import 'package:test_responsive_and_adaptive/views/widgets/tablet_layout.dart';

import 'mobile_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}

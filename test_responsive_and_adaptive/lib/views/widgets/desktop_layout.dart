import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive/views/widgets/custom_desktop_widget.dart';
import 'package:test_responsive_and_adaptive/views/widgets/custom_drawer.dart';
import 'package:test_responsive_and_adaptive/views/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex:1,child: CustomDrawer()),
        Expanded(flex:3,child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TabletLayout(),
        )),
        Expanded(flex:1,child: CustomDesktopWidget())
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}
class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
        elevation: 0,
              backgroundColor: Colors.white,
              leading:
                  IconButton(onPressed: () {
scaffoldKey.currentState!.openDrawer();
                  }, icon: const Icon(Icons.menu)),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet?const CustomDrawer():null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout: (context) => const DashBoardDesktopLayout()),
    );
  }
}

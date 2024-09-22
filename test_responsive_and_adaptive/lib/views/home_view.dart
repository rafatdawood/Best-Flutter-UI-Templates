import 'package:flutter/material.dart';

import 'widgets/custom_drawer.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffDBDBDB),
      drawer: const CustomDrawer(),
      appBar: MediaQuery.sizeOf(context).width -32 < 900
          ? AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: HomeViewBody(),
      ),
    );
  }
}

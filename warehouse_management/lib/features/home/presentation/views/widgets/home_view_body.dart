import 'package:flutter/material.dart';
import 'package:warehouse_management/features/drawer_menu/presentation/views/drawer_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      DrawerView(),
    ],);
  }
}

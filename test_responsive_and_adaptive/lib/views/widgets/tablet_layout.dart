import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive/views/widgets/custom_list_for_tablet.dart';

import 'custom_sliver_grid.dart';
import 'custom_sliver_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomListForTablet(),
        CustomSliverListView(),
      ],
    );
  }
}

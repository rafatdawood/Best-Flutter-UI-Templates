import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive/views/widgets/custom_sliver_item.dart';
import 'package:test_responsive_and_adaptive/views/widgets/custom_sliver_list_item.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex:2,child: CustomSliverItem()),
        SizedBox(height: 16),
        Expanded(flex:1,child: CustomSliverListItem()),
      ],
    );
  }
}

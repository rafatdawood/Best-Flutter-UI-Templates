import 'package:flutter/material.dart';

import 'custom_sliver_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return const CustomSliverItem();
      },
    );
  }
}
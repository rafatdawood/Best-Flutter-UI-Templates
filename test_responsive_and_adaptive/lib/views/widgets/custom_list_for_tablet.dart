import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive/views/widgets/custom_sliver_item.dart';

class CustomListForTablet extends StatelessWidget {
  const CustomListForTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 16),
              child: AspectRatio(aspectRatio: 1,child: CustomSliverItem()),
            );
          },
        ),
      ),
    );
  }
}

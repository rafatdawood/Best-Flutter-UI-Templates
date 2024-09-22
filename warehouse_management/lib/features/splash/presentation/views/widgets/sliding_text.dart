import 'package:flutter/material.dart';
import 'package:warehouse_management/core/utils/app_style.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimation});
  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Warehouse Management',style: AppStyles.styleSemiBold24(context),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
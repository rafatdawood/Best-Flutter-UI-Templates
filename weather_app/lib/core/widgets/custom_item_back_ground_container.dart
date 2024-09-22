import 'package:flutter/material.dart';

class CustomItemBackGroundContainer extends StatelessWidget {
  const CustomItemBackGroundContainer(
      {super.key, required this.child, this.padding});

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 10),
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.30000001192092896),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Colors.white.withOpacity(0.699999988079071),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: child,
    );
  }
}

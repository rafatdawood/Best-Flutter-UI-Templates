import 'package:flutter/material.dart';

class CustomSliverItem extends StatelessWidget {
  const CustomSliverItem({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:  color ?? const Color(0xffB4B4B4),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
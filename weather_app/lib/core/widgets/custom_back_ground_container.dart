import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer(
      {super.key, required this.child, this.padding, this.height, this.border, this.shadowBox});

  final Widget child;
  final double? padding;
  final double? height;
  final BorderRadiusGeometry? border;
  final List<BoxShadow>? shadowBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.only(right:padding  ?? 30,left: padding??30,bottom: padding??30),
      decoration: BoxDecoration(
        borderRadius: border,
        boxShadow: shadowBox,
        gradient: const LinearGradient(
          begin: Alignment(-0.21, -0.98),
          end: Alignment(0.21, 0.98),
          colors: [
            Color(0xFF47BFDF),
            Color(0xFF4A91FF),
          ],
        ),
      ),
      child: child,
    );
  }
}

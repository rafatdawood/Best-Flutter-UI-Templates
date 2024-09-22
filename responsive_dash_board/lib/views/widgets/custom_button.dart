import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backGroundColor, this.textColor, required this.text});
  final Color ? backGroundColor,textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
            elevation: 0,
            backgroundColor: backGroundColor ?? Color(0xFF4DB7F2),
            overlayColor: Colors.transparent
          ),
          child: Text(
            text,
            style: AppStyles.styleSemiBold18(context).copyWith(color: textColor ?? Color(0xFFFFFFFF)),
          )),
    );
  }
}

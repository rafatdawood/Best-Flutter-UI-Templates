import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xFFFAFAFA),
        filled: true,
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(color: Color(0xFFAAAAAA)),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder()
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Color(0xFFFAFAFA),
        ),
      );
  }
}

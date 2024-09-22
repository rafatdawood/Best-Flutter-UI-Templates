import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 50,
              offset: Offset(-4, 8),
              spreadRadius: 4,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 28),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Forecast report",
              style: AppStyles.overpassRegular18(context).copyWith(shadows: [])
                  .copyWith(color: const Color(0xFF444D71)),
            ),
            const SizedBox(width: 17),
            const Icon(
              Icons.keyboard_arrow_up_sharp,
              color: Color(0xFF444D71),
            )
          ],
        ),
      ),
    );
  }
}
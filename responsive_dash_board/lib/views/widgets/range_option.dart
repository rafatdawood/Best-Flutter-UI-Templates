import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

import '../../utils/app_style.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyles.styleMedium16(context)),
          const SizedBox(width: 18),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(Assets.imagesArrowDown),
          ),
        ],
      ),
    );
  }
}

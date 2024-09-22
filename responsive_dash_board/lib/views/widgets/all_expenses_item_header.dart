import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBgColor,
    this.imageColor,
  });

  final String image;
  final Color? imageBgColor, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: imageBgColor ?? const Color(0xFFFAFAFA),
                ),
                child: Center(
                    child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                    imageColor ?? const Color(0xFF4EB7F2),
                    BlendMode.srcIn,
                  ),
                )),
              ),
            ),
          ),
        ),
        // const Spacer(),
        SvgPicture.asset(
          Assets.imagesArrowRight,
          colorFilter: ColorFilter.mode(
            imageColor ?? const Color(0xFF064061),
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}

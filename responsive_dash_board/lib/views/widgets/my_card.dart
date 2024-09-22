import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/images/frame_cart.png'),fit: BoxFit.fill),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(left: 31, right: 42-24, top: 16),
                title: Text(
                  'Name card',
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20(context),
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              Expanded(child: SizedBox()),
              Text(
                '0918 8124 0042 8129',
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '12/20',
                    style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '-',
                    style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '124',
                    style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                  ),
                ],
              ),
              Flexible(child: SizedBox(height: 27)),
            ],
          ),
        ),
      ),
    );
  }
}

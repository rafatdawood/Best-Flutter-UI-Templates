import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/utils/app_styles.dart';
import 'package:weather_app/core/utils/assets_data.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key, required this.temp, required this.speed, required this.main, required this.humidity});
  final num speed,temp,humidity;
  final String main;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: const EdgeInsets.only(top: 17),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              DateFormat('EEEE d MMMM').format(DateTime.now()),
              style: AppStyles.overpassRegular18(context).copyWith(shadows: [
                Shadow(
                    color: Colors.black.withOpacity(0.4000000059604645),
                    offset: const Offset(-5, 10),
                    blurRadius: 3.0)
              ]),
            ),
            const Flexible(child: SizedBox(height: 6)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${temp.round()}',
                  style: AppStyles.overpassRegular100(context).copyWith(shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.4000000059604645),
                      offset: const Offset(-10, 30),
                      blurRadius: 15.0,
                    )
                  ]),
                ),
                Text(
                  '°',
                  style: AppStyles.overpassRegular72(context).copyWith(shadows: [
                    Shadow(
                        color: Colors.black.withOpacity(0.4000000059604645),
                        offset: const Offset(-10, 30),
                        blurRadius: 15.0)
                  ]),
                )
              ],
            ),
            const Flexible(child: SizedBox(height: 15)),
            Text(
              main,
              style: AppStyles.overpassBold24(context).copyWith(shadows: [
                Shadow(
                    color: Colors.black.withOpacity(0.4000000059604645),
                    offset: const Offset(-5, 10),
                    blurRadius: 3.0)
              ]),
            ),
            const Flexible(child: SizedBox(height: 34)),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(AssetsData.imageWindy),
                      const SizedBox(width: 23),
                      Text(
                        textAlign: TextAlign.end,
                        'Wind',
                        style: AppStyles.overpassRegular18(context),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  '|',
                  style: AppStyles.overpassBold18(context),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    '$speed km/h',
                    style: AppStyles.overpassRegular18(context),
                  ),
                )
              ],
            ),
            const Flexible(
                child: SizedBox(
                  height: 23,
                )),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(AssetsData.imageHum,),
                      const SizedBox(width: 23),
                      Text(
                        textAlign: TextAlign.end,
                        'Hum',
                        style: AppStyles.overpassRegular18(context),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  '|',
                  style: AppStyles.overpassBold18(context),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    '$humidity %',
                    style: AppStyles.overpassRegular18(context),
                  ),
                ),
              ],
            ),
            const Flexible(
                child: SizedBox(
                  height: 30,
                )),
          ],
        ),
      ),
    );
  }
}
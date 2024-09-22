import 'package:flutter/material.dart';

import 'size_config.dart';

abstract class AppStyles {
  static TextStyle overpassRegular18(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Overpass',
      fontWeight: FontWeight.w400,
      shadows: [
        Shadow(
            color: Colors.black.withOpacity(0.4000000059604645),
            offset: Offset(-5, 10),
            blurRadius: 5.0)
      ],
    );
  }

  static TextStyle overpassBold18(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Overpass',
      fontWeight: FontWeight.w700,
      shadows: [
        Shadow(
            color: Colors.black.withOpacity(0.4000000059604645),
            offset: Offset(-5, 10),
            blurRadius: 5.0)
      ],
    );
  }

  static TextStyle overpassRegular100(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 100),
      fontFamily: 'Overpass',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle overpassRegular72(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 72),
      fontFamily: 'Overpass',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle overpassBold24(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Overpass',
      fontWeight: FontWeight.w700,
      shadows: [
        Shadow(
            color: Colors.black.withOpacity(0.4000000059604645),
            offset: Offset(-5, 10),
            blurRadius: 5.0)
      ],
    );
  }

  static TextStyle overpassSemiBold24(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Overpass',
      fontWeight: FontWeight.w600,
      shadows: [
        Shadow(
            color: Colors.black.withOpacity(0.4000000059604645),
            offset: Offset(-5, 10),
            blurRadius: 5.0)
      ],
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else {
    return width / 1000;
  }
}

import 'package:flutter/material.dart';
import 'package:task_mul/core/utiles/sizeconfig.dart';

abstract class AppStyles {
  static TextStyle styleRegular11(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 11),
        fontWeight: FontWeight.w400,
        color: Color(0xffC0C0C0));
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular9(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 9),
        fontWeight: FontWeight.w600,
        color: Colors.white);
  }

  static TextStyle styleR9(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 9),
        fontWeight: FontWeight.w400,
        color: Colors.white);
  }

  static TextStyle stylemeduim5(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 5),
        fontWeight: FontWeight.w400,
        color: Colors.white);
  }

  static TextStyle stylereguler5(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 3),
        fontWeight: FontWeight.w400,
        color: Color(0xff777777));
  }

  static TextStyle stylereguler4(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 4),
        fontWeight: FontWeight.w400,
        color: Color(0xff777777));
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
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}

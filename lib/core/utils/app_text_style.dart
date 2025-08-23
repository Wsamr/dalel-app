import 'package:dalel_app/core/utils/app_color.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle pacifico(double? size, Color? color) {
    return TextStyle(
      fontFamily: TextFamilyString.pacifico,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle poppins({
    double? size,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      fontFamily: TextFamilyString.poppins,
      fontSize: size ?? 16.sp,
      color: color ?? AppColor.white,
      fontWeight: fontWeight ?? FontWeight.w600,
    );
  }

  static TextStyle saira({double? size, Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: TextFamilyString.saira,
      fontSize: size ?? 32.sp,
      color: color ?? AppColor.white,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }
}

class TextFamilyString {
  static String pacifico = "Pacifico";
  static String poppins = "Poppins";
  static String saira = "Saira";
}

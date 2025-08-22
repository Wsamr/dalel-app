import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget({super.key, this.title, this.onPressed, this.color});
  final String? title;
  final void Function()? onPressed;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        backgroundColor: color ?? AppColor.primaryColor,
        foregroundColor: AppColor.white,
        fixedSize: Size(double.maxFinite, responsiveWidth(context, 56)),
      ),
      child: Text(title ?? AppString.next, style: AppTextStyle.poppins()),
    );
  }
}

import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({Key? key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: AppTextStyle.poppins(size: 26.sp, color: AppColor.black),
      ),
    );
  }
}

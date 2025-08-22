import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({
    super.key,
    // required this.onboardingModel,
    this.onTap,
  });
  Function()? onTap;
  // final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.topRight,
        child: Text(
          // onboardingModel.skip == null ? "" : onboardingModel.skip!,
          AppString.skip,
          style: AppTextStyle.poppins(
            size: 16.sp,
            color: AppColor.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

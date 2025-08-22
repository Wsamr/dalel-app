// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';

class OnboardingText extends StatelessWidget {
  const OnboardingText({
    Key? key,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
  }) : super(key: key);
  final String? text1;
  final String? text2;
  final String? text3;
  final String? text4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1 ?? AppString.exploreThehistorywith,
          style: AppTextStyle.poppins(size: 23.sp, color: AppColor.black),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: responsiveHeight(context, 16)),
        Text(
          text3 ?? AppString.usingourappshistorylibraries,
          style: AppTextStyle.poppins(
            size: 14.sp,
            color: AppColor.black,
            fontWeight: FontWeight.w100,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

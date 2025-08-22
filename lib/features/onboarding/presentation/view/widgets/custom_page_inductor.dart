import 'package:dalel_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustompageInductor extends StatelessWidget {
  const CustompageInductor({
    super.key,
    required this.controller,
    required this.count,
  });

  final PageController controller;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      effect: ExpandingDotsEffect(
        dotColor: AppColor.lightGrey,
        activeDotColor: AppColor.deepBrown,
        dotHeight: 6.sp,
        dotWidth: 6.sp,
      ),
    );
  }
}

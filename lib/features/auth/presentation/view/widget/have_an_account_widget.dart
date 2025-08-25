import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
    required this.tex1,
    required this.text2,
    this.onTap,
  });
  final String tex1, text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: tex1,
                style: AppTextStyle.poppins(
                  color: AppColor.deepGrey,
                  size: 12.sp,
                ),
              ),
              TextSpan(
                text: text2,
                style: AppTextStyle.poppins(
                  color: AppColor.lightGrey,
                  size: 12.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryTextContainer extends StatelessWidget {
  const CustomCategoryTextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(context, 74),
      height: responsiveHeight(context, 37),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: responsiveHeight(context, 11),
        horizontal: responsiveWidth(context, 4),
      ),

      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(color: AppColor.grey, blurRadius: 2, offset: Offset(1, 3)),
        ],
      ),
      child: Text(
        "Lionheart",
        style: AppTextStyle.poppins(size: 12.sp, color: AppColor.deepBrown),
      ),
    );
  }
}

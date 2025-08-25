import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:dalel_app/features/home/presentation/widgets/historical_periods_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoricalPeriodsItem extends StatelessWidget {
  const HistoricalPeriodsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsiveHeight(context, 96),
      width: responsiveWidth(context, 163),
      padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 16)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(color: AppColor.grey, blurRadius: 3, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: responsiveHeight(context, 48),
            width: responsiveWidth(context, 62),
            child: Text(
              AppString.ancientEgypt,
              style: AppTextStyle.poppins(
                color: AppColor.deepBrown,
                size: 15.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          HistoricalPeriodsImage(),
        ],
      ),
    );
  }
}

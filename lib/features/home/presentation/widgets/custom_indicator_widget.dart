import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:flutter/material.dart';

class CustomIndicatorWidget extends StatelessWidget {
  CustomIndicatorWidget({super.key, this.onTap, this.isSelected});
  final void Function()? onTap;
  bool? isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: responsiveHeight(context, 10),
        width: responsiveWidth(context, 10),
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected == true ? AppColor.grey : AppColor.white,
        ),
      ),
    );
  }
}

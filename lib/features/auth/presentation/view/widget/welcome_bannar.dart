
import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeBannar extends StatelessWidget {
  const WelcomeBannar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: BoxDecoration(color: AppColor.primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Text(AppString.dalel, style: AppTextStyle.saira()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(Assets.assetsImagesVector1),
              SvgPicture.asset(Assets.assetsImagesVector2),
            ],
          ),
        ],
      ),
    );
  }
}

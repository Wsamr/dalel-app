import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:flutter/material.dart';

class ForgetImageWidget extends StatelessWidget {
  const ForgetImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveHeight(context, 235),
      width: responsiveWidth(context, 235),
      child: Image.asset(Assets.assetsImagesForgotPassword),
    );
  }
}



import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class ForgetImageWidget extends StatelessWidget {
  const ForgetImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: 235,
      child: Image.asset(Assets.assetsImagesForgotPassword),
    );
  }
}

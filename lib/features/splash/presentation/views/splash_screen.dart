import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppString.dalel,
          style: AppTextStyle.pacifico(64, AppColor.deepBrown),
        ),
      ),
    );
  }
}

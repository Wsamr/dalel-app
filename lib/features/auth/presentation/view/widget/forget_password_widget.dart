import 'package:dalel_app/core/Routes/routes_name.dart';
import 'package:dalel_app/core/functions/navigtion_fun.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushReplacementNavigtion(context, RoutesName.foreGeTPassword);
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppString.forgotPassword,
          style: AppTextStyle.poppins(size: 12, color: AppColor.black),
        ),
      ),
    );
  }
}

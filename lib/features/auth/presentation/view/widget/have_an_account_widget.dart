
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
    required this.tex1,
    required this.text2,
  });
  final String tex1, text2;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: tex1,
              style: AppTextStyle.poppins(color: AppColor.deepGrey, size: 14),
            ),
            TextSpan(
              text: text2,
              style: AppTextStyle.poppins(color: AppColor.lightGrey, size: 14),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/custom_check_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBoxWidget(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: AppString.iHaveAgreeToOur,
                style: AppTextStyle.poppins(color: AppColor.deepGrey, size: 10.sp),
              ),
              TextSpan(
                text: AppString.termsAndCondition,
                style: AppTextStyle.poppins(color: AppColor.deepGrey, size: 10.sp)
                    .copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                      decorationColor: AppColor.deepGrey,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

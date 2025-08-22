import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormWidget extends StatelessWidget {
  const CustomTextFormWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 32),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: text,
          labelStyle: AppTextStyle.poppins(size: 14, color: AppColor.lightGrey),
          enabledBorder: getOutlineInputBorder(),
          focusedBorder: getOutlineInputBorder(),
        ),
      ),
    );
  }
}

OutlineInputBorder getOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColor.deepGrey),
  );
}

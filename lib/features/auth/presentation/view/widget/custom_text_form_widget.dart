import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormWidget extends StatelessWidget {
  CustomTextFormWidget({
    super.key,
    required this.text,
    this.onChanged,
    this.validatorl,
    this.suffixIcon,
    this.obscureText,
  });
  final String text;
  Widget? suffixIcon;
  bool? obscureText;
  void Function(String)? onChanged;
  String? Function(String?)? validatorl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 32),
      child: TextFormField(
        validator: validatorl,
        onChanged: onChanged,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: text,
          labelStyle: AppTextStyle.poppins(size: 14, color: AppColor.lightGrey),
          enabledBorder: getOutlineInputBorder(),
          focusedBorder: getOutlineInputBorder(),
          errorBorder: getOutlineInputBorder().copyWith(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: getOutlineInputBorder().copyWith(
            borderSide: BorderSide(color: Colors.red),
          ),
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

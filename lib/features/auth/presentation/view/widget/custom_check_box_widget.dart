import 'package:dalel_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomCheckBoxWidget extends StatefulWidget {
  const CustomCheckBoxWidget({super.key});

  @override
  State<CustomCheckBoxWidget> createState() => _CustomCheckBoxWidgetState();
}

class _CustomCheckBoxWidgetState extends State<CustomCheckBoxWidget> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(4),
      ),
      side: BorderSide(color: AppColor.deepGrey),
      value: value,
      onChanged: (newValue) {
        value = newValue;
        setState(() {});
      },
    );
  }
}

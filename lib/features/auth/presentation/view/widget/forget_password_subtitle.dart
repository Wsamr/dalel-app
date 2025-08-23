
import 'package:flutter/material.dart';

class ForgetPasswordSubtitle extends StatelessWidget {
  const ForgetPasswordSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Text(
        "Enter your registered email below to receive password reset instruction",
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/custom_forget_password_form.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/forget_image_widget.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/forget_password_subtitle.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 108)),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppString.forgotPassword),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: ForgetImageWidget()),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const SliverToBoxAdapter(child: ForgetPasswordSubtitle()),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(child: CustomForgetPasswordForm()),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
        ],
      ),
    );
  }
}

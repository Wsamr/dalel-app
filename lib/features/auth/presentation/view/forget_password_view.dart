import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
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
          SliverToBoxAdapter(
            child: SizedBox(height: responsiveHeight(context, 108)),
          ),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppString.forgotPassword),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: responsiveHeight(context, 40)),
          ),
          SliverToBoxAdapter(child: ForgetImageWidget()),
          SliverToBoxAdapter(
            child: SizedBox(height: responsiveHeight(context, 16)),
          ),
          const SliverToBoxAdapter(child: ForgetPasswordSubtitle()),
          SliverToBoxAdapter(
            child: SizedBox(height: responsiveHeight(context, 16)),
          ),
          SliverToBoxAdapter(child: CustomForgetPasswordForm()),
          SliverToBoxAdapter(
            child: SizedBox(height: responsiveHeight(context, 16)),
          ),
        ],
      ),
    );
  }
}

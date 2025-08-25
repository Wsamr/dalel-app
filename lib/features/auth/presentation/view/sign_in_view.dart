import 'package:dalel_app/core/Routes/routes_name.dart';
import 'package:dalel_app/core/functions/navigtion_fun.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/custom_sign_in_form.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/have_an_account_widget.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/welcome_bannar.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: WelcomeBannar()),
          SliverToBoxAdapter(
            child: SizedBox(height: responsiveHeight(context, 32)),
          ),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppString.welcomeBack),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: responsiveHeight(context, 8)),
          ),
          SliverToBoxAdapter(child: CustomSignInForm()),
          SliverToBoxAdapter(
            child: SizedBox(height: responsiveHeight(context, 16)),
          ),
          SliverToBoxAdapter(
            child: HaveAnAccountWidget(
              onTap: () {
                pushReplacementNavigtion(context, RoutesName.signUp);
              },
              tex1: AppString.dontHaveAnAccount,
              text2: AppString.signUp,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: responsiveHeight(context, 16)),
          ),
        ],
      ),
    );
  }
}

import 'package:dalel_app/core/Routes/routes_name.dart';
import 'package:dalel_app/core/functions/navigtion_fun.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/custom_sign_up_form.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/have_an_account_widget.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: responsiveHeight(context, 108)),
              ),
              const SliverToBoxAdapter(
                child: WelcomeTextWidget(text: AppString.welcome),
              ),
              SliverToBoxAdapter(
            child: SizedBox(height: responsiveHeight(context, 8)),
          ),
              SliverToBoxAdapter(child: CustomSignUpForm()),
              SliverToBoxAdapter(
                child: SizedBox(height: responsiveHeight(context, 16)),
              ),
              SliverToBoxAdapter(
                child: HaveAnAccountWidget(
                  onTap: () {
                    pushReplacementNavigtion(context, RoutesName.signIn);
                  },
                  tex1: AppString.alreadyHaveAnAccount,
                  text2: AppString.signIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

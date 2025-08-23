import 'package:dalel_app/core/Routes/routes_name.dart';
import 'package:dalel_app/core/functions/navigtion_fun.dart';
import 'package:dalel_app/core/utils/app_string.dart';
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
              const SliverToBoxAdapter(child: SizedBox(height: 108)),
              const SliverToBoxAdapter(
                child: WelcomeTextWidget(text: AppString.welcome),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 8)),
              SliverToBoxAdapter(child: CustomSignUpForm()),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
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

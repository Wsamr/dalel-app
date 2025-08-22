import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/widgets/custom_button_widget.dart';
import 'package:dalel_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/custom_sign_up_form.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/custom_text_form_widget.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/have_an_account_widget.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/terms_and_conditions.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/welcome_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              const SliverToBoxAdapter(
                child: HaveAnAccountWidget(
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

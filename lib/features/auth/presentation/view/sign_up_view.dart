// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/widgets/custom_button_widget.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/custom_text_form_widget.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/have_an_account_widget.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/terms_and_conditions.dart';
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
              const SliverToBoxAdapter(
                child: CustomTextFormWidget(text: AppString.firstName),
              ),

              const SliverToBoxAdapter(
                child: CustomTextFormWidget(text: AppString.lastName),
              ),

              const SliverToBoxAdapter(
                child: CustomTextFormWidget(text: AppString.emailAddress),
              ),

              const SliverToBoxAdapter(
                child: CustomTextFormWidget(text: AppString.password),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              const SliverToBoxAdapter(child: TermsAndConditions()),
              const SliverToBoxAdapter(child: SizedBox(height: 88)),
              SliverToBoxAdapter(
                child: CustomButtonWidget(
                  onPressed: () {},
                  title: AppString.signUp,
                ),
              ),
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

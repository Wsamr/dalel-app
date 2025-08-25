import 'package:dalel_app/core/Routes/routes_name.dart';
import 'package:dalel_app/core/functions/navigtion_fun.dart';
import 'package:dalel_app/core/functions/show_toast_msg.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/auth_validator.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:dalel_app/core/widgets/custom_button_widget.dart';
import 'package:dalel_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/custom_text_form_widget.dart';
import 'package:dalel_app/features/auth/presentation/view/widget/forget_password_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInLoadedState) {
          // pushReplacementNavigtion(context, RoutesName.home);
          FirebaseAuth.instance.currentUser!.emailVerified == true
              ? pushReplacementNavigtion(context, RoutesName.navBar)
              : showToastMsg("successs , first veritfy your email");
        } else if (state is SignInFailureState) {
          showToastMsg(state.errorMessage, color: Colors.red);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signInKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                CustomTextFormWidget(
                  text: AppString.emailAddress,
                  onChanged: (val) {
                    authCubit.email = val;
                  },
                  validatorl: (val) => Validator.validateEmail(val),
                ),
                CustomTextFormWidget(
                  text: AppString.password,
                  onChanged: (val) {
                    authCubit.password = val;
                  },
                  validatorl: (val) => Validator.validatePassword(val),
                  obscureText: authCubit.obscureText,
                  suffixIcon: IconButton(
                    onPressed: () {
                      authCubit.hidenPassword(!authCubit.obscureText!);
                    },
                    icon: authCubit.obscureText == true
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox(height: responsiveHeight(context, 16)),
                ForgetPassword(),
                SizedBox(height: responsiveHeight(context, 88)),
                state is SignInLoadingState
                    ? CircularProgressIndicator(color: AppColor.primaryColor)
                    : CustomButtonWidget(
                        onPressed: () async {
                          if (authCubit.signInKey.currentState!.validate()) {
                            await authCubit.signInWithEmailAndPassword();
                          }
                        },
                        title: AppString.signUp,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

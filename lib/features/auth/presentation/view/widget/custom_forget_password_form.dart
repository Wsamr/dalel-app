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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomForgetPasswordForm extends StatelessWidget {
  const CustomForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ForgetPasswordLoadedState) {
          showToastMsg("Check Your Email To reset Password");
          pushReplacementNavigtion(context, RoutesName.signIn);
        } else if (state is ForgetPasswordFailureState) {
          showToastMsg(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.forgetPasswordKey,
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

                SizedBox(height: responsiveHeight(context, 16)),
                state is ForgetPasswordLoadingState
                    ? CircularProgressIndicator(color: AppColor.primaryColor)
                    : CustomButtonWidget(
                        onPressed: () async {
                          if (authCubit.forgetPasswordKey.currentState!
                              .validate()) {
                            await authCubit.resetPassword();
                          }
                        },
                        title: AppString.resetPassword,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

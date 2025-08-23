import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckBoxWidget extends StatelessWidget {
  const CustomCheckBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(4),
      ),
      side: BorderSide(color: AppColor.deepGrey),
      value: BlocProvider.of<AuthCubit>(context).termsAndCondition,
      onChanged: (newValue) {
        BlocProvider.of<AuthCubit>(
          context,
        ).termsAndConditionUpdate(newValue: newValue);
      },
    );
  }
}

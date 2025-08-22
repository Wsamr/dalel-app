import 'package:dalel_app/core/Routes/routes_name.dart';
import 'package:dalel_app/core/functions/navigtion_fun.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/core/widgets/custom_button_widget.dart';
import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel_app/features/onboarding/presentation/view/widgets/custom_nav_bar.dart';
import 'package:dalel_app/features/onboarding/presentation/view/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController(initialPage: 0);

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              currentIndex < onboardingData.length - 1
                  ? CustomNavBar(
                      onTap: () {
                        pushNavigtion(context, RoutesName.signIn);
                      },
                    )
                  : SizedBox(),
              OnboardingBody(
                controller: _controller,
                onPageChanged: (index) {
                  currentIndex = index;
                  setState(() {});
                },
              ),
              currentIndex == onboardingData.length - 1
                  ? Column(
                      children: [
                        CustomButtonWidget(
                          title: AppString.createAccount,
                          onPressed: () {
                            _controller.nextPage(
                              duration: Duration(microseconds: 200),
                              curve: Curves.bounceIn,
                            );

                            pushReplacementNavigtion(
                              context,
                              RoutesName.signUp,
                            );
                          },
                        ),
                        SizedBox(height: 16),
                        GestureDetector(
                          onTap: () {
                            pushReplacementNavigtion(
                              context,
                              RoutesName.signIn,
                            );
                          },
                          child: Text(
                            AppString.loginNow,
                            style: AppTextStyle.poppins(
                              size: 16.sp,
                              color: AppColor.deepGrey,
                            ),
                          ),
                        ),
                      ],
                    )
                  : CustomButtonWidget(
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(microseconds: 200),
                          curve: Curves.bounceIn,
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

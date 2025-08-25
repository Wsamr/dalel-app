import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel_app/features/onboarding/presentation/view/widgets/custom_page_inductor.dart';
import 'package:dalel_app/features/onboarding/presentation/view/widgets/onboarding_text.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  OnboardingBody({super.key, required this.controller, this.onPageChanged});
  PageController controller;
  Function(int)? onPageChanged;

  // OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveHeight(context, 600),
      child: PageView.builder(
        onPageChanged: onPageChanged,

        controller: controller,
        itemCount: onboardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: responsiveHeight(context, 36)),
              Container(
                width: responsiveWidth(context, 343),
                height: responsiveHeight(context, 290),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onboardingData[index].image),
                  ),
                ),
              ),
              SizedBox(height: responsiveHeight(context, 24)),
              CustompageInductor(
                controller: controller,
                count: onboardingData.length,
              ),
              SizedBox(height: responsiveHeight(context, 32)),
              OnboardingText(
                text1: onboardingData[index].text1,
                text2: onboardingData[index].text2,
              ),
            ],
          );
        },
      ),
    );
  }
}

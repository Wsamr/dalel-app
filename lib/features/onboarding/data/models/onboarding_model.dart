import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_string.dart';

class OnboardingModel {
  String image;
  String text1;
  String text2;

  OnboardingModel({
    required this.image,
    required this.text1,
    required this.text2,
  });
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    image: Assets.assetsImagesOnBoarding1,
    text1: AppString.exploreThehistorywith,
    text2: AppString.usingourappshistorylibraries,
  ),
  OnboardingModel(
    image: Assets.assetsImagesOnBoarding2,
    text1: AppString.fromEveryPlace,
    text2: AppString.aBigVarietyOfAncientPlaces,
  ),
  OnboardingModel(
    image: Assets.assetsImagesOnBoarding3,
    text1: AppString.usingModernAiTechnology,
    text2: AppString.aiProvideRecommendationsAndHelps,
  ),
];

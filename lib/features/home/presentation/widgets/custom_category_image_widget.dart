import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:flutter/material.dart';

class CustomCategoryImageWidget extends StatelessWidget {
  const CustomCategoryImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsiveHeight(context, 96),
      width: responsiveWidth(context, 74),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        image: DecorationImage(
          image: AssetImage(Assets.assetsImagesCharacterImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

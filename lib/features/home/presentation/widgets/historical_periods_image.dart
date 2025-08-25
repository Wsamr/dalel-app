import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsImage extends StatelessWidget {
  const HistoricalPeriodsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(context, 47),
      height: responsiveHeight(context, 64),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Assets.assetsImagesFrame1)),
      ),
    );
  }
}

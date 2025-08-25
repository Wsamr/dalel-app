import 'package:carousel_slider/carousel_slider.dart';
import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/features/home/home_cubit/home_cubit.dart';
import 'package:dalel_app/features/home/presentation/widgets/custom_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCarouselSliderWiidget extends StatelessWidget {
  CustomCarouselSliderWiidget({super.key});
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);

    return CarouselSlider.builder(
      carouselController: _controller,
      options: CarouselOptions(
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
        onPageChanged: (index, reason) {
          homeCubit.currentIndexIndictor = index;
          homeCubit.changeIndicator(index);
        },
      ),
      itemCount: images.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(image: AssetImage(images[itemIndex])),
                ),
              ),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return Positioned(
                    bottom: 8,
                    left: MediaQuery.of(context).size.width * .4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images.asMap().entries.map((e) {
                        return CustomIndicatorWidget(
                          isSelected: homeCubit.currentIndexIndictor == e.key,
                          onTap: () => _controller.animateToPage(e.key),
                        );
                      }).toList(),
                    ),
                  );
                },
              ),
            ],
          ),
    );
  }
}

List<String> images = [
  Assets.assetsImagesAcientWar,
  Assets.assetsImagesAcientWar,
  Assets.assetsImagesAcientWar,
  Assets.assetsImagesAcientWar,
];

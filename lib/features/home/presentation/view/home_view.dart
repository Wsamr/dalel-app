import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:dalel_app/core/widgets/header_text_widget.dart';
import 'package:dalel_app/features/home/presentation/widgets/custom_app_bar_widget.dart';
import 'package:dalel_app/features/home/presentation/widgets/custom_carouse_slider_widget.dart';
import 'package:dalel_app/features/home/presentation/widgets/historical_characters_widget_list.dart';
import 'package:dalel_app/features/home/presentation/widgets/historical_periods.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 15)),
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 28)),
              SliverToBoxAdapter(child: CustomAppBarWidget()),
              SliverToBoxAdapter(child: SizedBox(height: 34)),
              SliverToBoxAdapter(
                child: HeaderTextWidget(text: AppString.historicalperiods),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: HistoricalPeriods()),
              SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverToBoxAdapter(
                child: HeaderTextWidget(text: AppString.historicalCharacters),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: HistoricalCharactersWidgetList()),
              SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverToBoxAdapter(
                child: HeaderTextWidget(text: AppString.ancientWars),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: CustomCarouselSliderWiidget()),
            ],
          ),
        ),
      ),
    );
  }
}

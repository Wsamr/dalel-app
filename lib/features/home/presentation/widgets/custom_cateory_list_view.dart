import 'package:dalel_app/core/utils/responsive_figma_sizes.dart';
import 'package:dalel_app/features/home/presentation/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';

class CustomCateoryListView extends StatelessWidget {
  const CustomCateoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveHeight(context, 136),
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(width: responsiveWidth(context, 16));
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryItemWidget();
        },
        itemCount: 10,
      ),
    );
  }
}

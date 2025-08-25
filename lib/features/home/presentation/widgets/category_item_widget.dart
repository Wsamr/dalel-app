import 'package:dalel_app/features/home/presentation/widgets/custom_category_image_widget.dart';
import 'package:dalel_app/features/home/presentation/widgets/custom_category_text_container.dart';
import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [CustomCategoryImageWidget(), CustomCategoryTextContainer()],
    );
  }
}

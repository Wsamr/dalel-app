import 'package:dalel_app/features/home/presentation/widgets/historical_characters_image_widget.dart';
import 'package:dalel_app/features/home/presentation/widgets/historical_characters_text_container.dart';
import 'package:flutter/material.dart';

class HistoricalCharactersWidget extends StatelessWidget {
  const HistoricalCharactersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        HistoricalCharactersImageWidget(),
        HistoricalCharactersTextContainer(),
      ],
    );
  }
}

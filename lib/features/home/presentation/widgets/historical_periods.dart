import 'package:dalel_app/features/home/presentation/widgets/historical_periods_item.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [HistoricalPeriodsItem(), HistoricalPeriodsItem()],
    );
  }
}

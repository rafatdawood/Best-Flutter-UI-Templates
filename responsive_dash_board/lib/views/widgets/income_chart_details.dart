import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class IncomeChartDetails extends StatefulWidget {
  const IncomeChartDetails({super.key});

  @override
  State<IncomeChartDetails> createState() => _IncomeChartDetailsState();
}

class _IncomeChartDetailsState extends State<IncomeChartDetails> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Flexible(child: AspectRatio(aspectRatio: 1, child: PieChart(getChartData())));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          setState(() {
            activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          titlePositionPercentageOffset: activeIndex == 0 ? -2 : null,
          titleStyle: AppStyles.styleSemiBold16(context)
              .copyWith(color: activeIndex == 0 ? Colors.black : Colors.white),
          color: const Color(0xFF208BC7),
          radius: activeIndex == 0 ? 60 : 50,
          title: activeIndex == 0 ? 'Design service' : '40%',
        ),
        PieChartSectionData(
          value: 25,
          titlePositionPercentageOffset: activeIndex == 1 ? -2 : null,
          titleStyle: AppStyles.styleSemiBold16(context)
              .copyWith(color: activeIndex == 1 ? Colors.black : Colors.white),
          color: const Color(0xFF4DB7F2),
          radius: activeIndex == 1 ? 60 : 50,
          title: activeIndex == 1 ? 'Design product' : '25%',
        ),
        PieChartSectionData(
          value: 20,
          titlePositionPercentageOffset: activeIndex == 2 ? -2 : null,
          titleStyle: AppStyles.styleSemiBold16(context)
              .copyWith(color: activeIndex == 2 ? Colors.black : Colors.white),
          color: const Color(0xFF064060),
          radius: activeIndex == 2 ? 60 : 50,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
        ),
        PieChartSectionData(
          value: 15,
          titlePositionPercentageOffset: activeIndex == 3 ? -2 : null,
          titleStyle: AppStyles.styleSemiBold16(context)
              .copyWith(color: activeIndex == 3 ? Colors.black : Colors.white),
          color: const Color(0xFFE2DECD),
          radius: activeIndex == 3 ? 60 : 50,
          title: activeIndex == 3 ? 'Other' : '15%',
        ),
      ],
    );
  }
}

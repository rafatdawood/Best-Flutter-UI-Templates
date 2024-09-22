import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
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
          color: const Color(0xFF208BC7),
          radius: activeIndex == 0 ? 60 : 50,
          title: 'Design service',
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0xFF4DB7F2),
          radius: activeIndex == 1 ? 60 : 50,
          title: 'Design product',
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0xFF064060),
          radius: activeIndex == 2 ? 60 : 50,
          title: 'Product royalti',
          showTitle: false,
        ),
        PieChartSectionData(
          value: 15,
          color: const Color(0xFFE2DECD),
          radius: activeIndex == 3 ? 60 : 50,
          title: 'Other',
          showTitle: false,
        ),
      ],
    );
  }
}

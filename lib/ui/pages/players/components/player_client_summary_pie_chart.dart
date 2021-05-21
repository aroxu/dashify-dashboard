import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:Dashify/constants.dart';

class PlayerClientSummaryPieChart extends StatelessWidget {
  const PlayerClientSummaryPieChart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSelectionDatas,
            ),
            swapAnimationDuration: Duration(milliseconds: 300),
            swapAnimationCurve: Curves.linear,
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding),
                Text(
                  "57P.",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text("of 100P.")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionDatas = [
  PieChartSectionData(
    color: primaryColor,
    value: 57,
    showTitle: false,
    radius: 32,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 25,
    showTitle: false,
    radius: 24,
  ),
  PieChartSectionData(
    color: Color(0xFFFFCF26),
    value: 12,
    showTitle: false,
    radius: 16,
  ),
];

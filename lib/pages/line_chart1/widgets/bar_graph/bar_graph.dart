import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graficos/pages/line_chart1/widgets/bar_graph/bar_data.dart';

class BarGraph extends StatelessWidget {
  final List weeklySumary;
  const BarGraph({
    Key? key,
    required this.weeklySumary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      sunAmount: weeklySumary[0],
      monAmount: weeklySumary[1],
      tueAmount: weeklySumary[2],
      wedAmount: weeklySumary[3],
      thurAmount: weeklySumary[4],
      friAmount: weeklySumary[5],
      satAmount: weeklySumary[6],
    );
    myBarData.initalizeBarData();
    return BarChart(
      BarChartData(
        maxY: 200,
        minY: 0,
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(show: true),
        barGroups: myBarData.barData
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                    toY: data.y,
                    color: Colors.grey[800],
                    width: 7,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

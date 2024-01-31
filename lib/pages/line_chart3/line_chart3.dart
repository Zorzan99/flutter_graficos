import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChart3 extends StatelessWidget {
  const LineChart3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black12,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: LinearChartWidget(),
        ),
      ),
    );
  }
}

class Titles {
  static getTitleData() => FlTitlesData(
        show: true,
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 35,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 10000:
                  return const SideTitleWidgetText(
                    text: '10K',
                    fontSize: 13,
                  );

                case 20000:
                  return const SideTitleWidgetText(
                    text: '20K',
                    fontSize: 13,
                  );
                case 30000:
                  return const SideTitleWidgetText(
                    text: '10K',
                    fontSize: 13,
                  );
                case 40000:
                  return const SideTitleWidgetText(
                    text: '2021',
                    fontSize: 13,
                  );
                case 50000:
                  return const SideTitleWidgetText(
                    text: '2022',
                    fontSize: 13,
                  );
                case 60000:
                  return const SideTitleWidgetText(
                    text: '2022',
                    fontSize: 13,
                  );
                case 70000:
                  return const SideTitleWidgetText(
                    text: '2022',
                    fontSize: 13,
                  );

                default:
                  return const SideTitleWidgetText(
                    text: '',
                  );
              }
            },
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 2:
                  return const SideTitleWidgetText(
                    text: '2020',
                  );
                case 5:
                  return const SideTitleWidgetText(
                    text: '2021',
                  );
                case 8:
                  return const SideTitleWidgetText(
                    text: '2022',
                  );

                default:
                  return const SideTitleWidgetText(
                    text: '',
                  );
              }
            },
          ),
        ),
      );
}

class SideTitleWidgetText extends StatelessWidget {
  final String text;
  final TitleMeta? meta;
  final double? fontSize;
  const SideTitleWidgetText({
    Key? key,
    required this.text,
    this.meta,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideTitleWidget(
      axisSide: AxisSide.right,
      space: 5,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class LinearChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    Colors.redAccent,
    Colors.orangeAccent,
  ];
  LinearChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 70000,
        titlesData: Titles.getTitleData(),
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Colors.grey[800],
              strokeWidth: 1,
            );
          },
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: Colors.grey[800]!,
            width: 2,
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 30000),
              const FlSpot(2.5, 10000),
              const FlSpot(4, 50000),
              const FlSpot(6, 43000),
              const FlSpot(8, 40000),
              const FlSpot(9, 30000),
              const FlSpot(11, 38000),
            ],
            isCurved: true,
            barWidth: 3,
            belowBarData: BarAreaData(
              gradient: LinearGradient(
                colors: gradientColors
                    .map((color) => color.withOpacity(.4))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

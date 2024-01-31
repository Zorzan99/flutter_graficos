import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChart2 extends StatefulWidget {
  const LineChart2({super.key});

  @override
  State<LineChart2> createState() => _LineChart2State();
}

class _LineChart2State extends State<LineChart2> {
  List<Color> gradientColors = [
    const Color(0xFF23B6E6),
    const Color(0xFF02D39A),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 400,
            height: 400,
            child: LineChart(
              LineChartData(
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                gridData: FlGridData(
                  show: true,
                  getDrawingHorizontalLine: (value) {
                    return const FlLine(
                      color: Colors.white,
                      strokeWidth: 1,
                    );
                  },
                  drawVerticalLine: true,
                  getDrawingVerticalLine: (value) {
                    return const FlLine(
                      color: Colors.white,
                      strokeWidth: 1,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 25,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const Text('Fev 01');
                            case 4:
                              return const Text('Jun 02');
                            case 8:
                              return const Text('Out 03');

                            default:
                          }
                          return const Text('');
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 25,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const Text('0');
                            case 2:
                              return const Text('50');
                            case 4:
                              return const Text('100');
                            case 6:
                              return const Text('150');

                            default:
                          }
                          return const Text('');
                        },
                      ),
                    )),
                maxX: 8,
                maxY: 8,
                minX: 0,
                minY: 0,
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 0),
                      const FlSpot(5, 5),
                      const FlSpot(7, 6),
                      const FlSpot(8, 4),
                    ],
                    isCurved: true,
                    barWidth: 5,
                    gradient: const LinearGradient(
                      colors: [
                        Colors.black12,
                        Colors.white70,
                        Colors.white,
                      ],
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: gradientColors
                            .map((e) => e.withOpacity(0.3))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_graficos/pages/line_chart1/widgets/bar_graph/bar_graph.dart';

class LineChart1 extends StatefulWidget {
  const LineChart1({super.key});

  @override
  State<LineChart1> createState() => _LineChart1State();
}

class _LineChart1State extends State<LineChart1> {
  List<double> weeklySumary = [
    4.40,
    2.50,
    42.42,
    10.50,
    100.20,
    88.99,
    90.10,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: 400,
          child: BarGraph(weeklySumary: weeklySumary),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_graficos/initial_page.dart';
import 'package:flutter_graficos/pages/line_chart1/line_chart1.dart';
import 'package:flutter_graficos/pages/line_chart2/line_chart2.dart';
import 'package:flutter_graficos/pages/line_chart3/line_chart3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialPage(),
        '/lineChart1': (context) => const LineChart1(),
        '/lineChart2': (context) => const LineChart2(),
        '/lineChart3': (context) => const LineChart3(),
      },
    );
  }
}

import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inital Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/lineChart1'),
              child: const Text('Line Chart 1'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/lineChart2'),
              child: const Text('Line Chart2'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/lineChart3'),
              child: const Text('Line Chart3'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pieChart1'),
              child: const Text('Pie Chart1'),
            ),
          ],
        ),
      ),
    );
  }
}

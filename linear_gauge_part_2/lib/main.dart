import 'package:flutter/material.dart';

import 'linear_gauge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Linear Gauge',
      home: LinearGauge(maxValue: 100, minValue: 0, actualValue: 75),
    );
  }
}

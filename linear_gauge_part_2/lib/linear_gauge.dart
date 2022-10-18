import 'package:flutter/material.dart';

import 'linear_gauge_custom_painter.dart';

class LinearGauge extends StatefulWidget {
  const LinearGauge({
    required this.maxValue,
    required this.minValue,
    required this.actualValue,
    Key? key,
  }) : super(key: key);

  final double maxValue;
  final double minValue;
  final double actualValue;

  @override
  State<LinearGauge> createState() => _LinearGaugeState();
}

class _LinearGaugeState extends State<LinearGauge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Linear Gauge')),
      body: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: LinearGaugeCustomPainter(),
      ),
    );
  }
}

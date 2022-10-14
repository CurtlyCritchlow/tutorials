import 'package:flutter/material.dart';

class LinearGaugeCustomPainter extends CustomPainter {
  ///find Main Axis start point
  Offset getMainAxisStartPoint(Size size) =>
      Offset(size.width / 2, size.height / 7);

  ///find MainAxis highest value
  Offset getMainAxisEndPoint(Size size) =>
      Offset(size.width / 2, size.height / 1.2);

  /// Draws the main axis of the Gauge
  void drawGaugeMainAxis(Canvas canvas, Size size) {
    final gaugeMainAxisPainter = Paint()
      ..color = Colors.grey.shade300
      ..strokeWidth = 5.0;
    canvas.drawLine(getMainAxisStartPoint(size), getMainAxisEndPoint(size),
        gaugeMainAxisPainter);
  }

  @override
  void paint(Canvas canvas, Size size) {
    drawGaugeMainAxis(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

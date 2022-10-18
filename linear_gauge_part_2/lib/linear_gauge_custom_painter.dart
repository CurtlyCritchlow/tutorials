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

  /// Get the length of the main axis
  double getMainAxisLength(Size size) {
    return getMainAxisStartPoint(size).dy - getMainAxisEndPoint(size).dy;
  }

  /// Find the distance between each majorTicks.
  double getMajorTickInterval(Size size) => getMainAxisLength(size) / 10;

  /// draws the major tick on the canvas
  void drawMajorTickMarks({required Canvas canvas, required Size size}) {
    final interval = getMajorTickInterval(size);

    var majorTickMarkPosition = getMainAxisEndPoint(size).dy;

    for (var i = 0; i < (10 + 1); i++) {
      final Offset majorTickMarksStartPoint =
          Offset((size.width / 2) - 5 / 2, majorTickMarkPosition);

      final Offset majorTickMarksEndPoint =
          Offset((size.width / 2) + 25, majorTickMarkPosition);

      final majorTickMarksPainter = Paint()
        ..color = Colors.grey.shade300
        ..strokeWidth = 5;

      canvas.drawLine(majorTickMarksStartPoint, majorTickMarksEndPoint,
          majorTickMarksPainter);
      majorTickMarkPosition = majorTickMarkPosition + interval;
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    drawGaugeMainAxis(canvas, size);

    drawMajorTickMarks(canvas: canvas, size: size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

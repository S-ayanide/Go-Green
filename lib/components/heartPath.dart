import 'package:flutter/material.dart';

Path _buildHeartPath() {
  return Path()
    ..moveTo(55, 15)
    ..cubicTo(55, 12, 50, 0, 30, 0)
    ..cubicTo(0, 0, 0, 37.5, 0, 37.5)
    ..cubicTo(0, 55, 20, 77, 55, 95)
    ..cubicTo(90, 77, 110, 55, 110, 37.5)
    ..cubicTo(110, 37.5, 110, 0, 80, 0)
    ..cubicTo(65, 0, 55, 12, 55, 15)
    ..close();
}

import 'package:flutter/material.dart';

class CurvedPainter extends CustomPainter {
  final Color color;

  CurvedPainter({
    required this.color,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint()..color = color;

    double fraction = 0.65;
    path.lineTo(0, size.height * fraction);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height * fraction,
    );
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

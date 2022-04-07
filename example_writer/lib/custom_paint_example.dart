import 'package:flutter/material.dart';

class CustomPaintExample extends StatelessWidget {
  const CustomPaintExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(
            300,
            300,
          ),
          painter: CirclePainter(
            40,
          ),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  const CirclePainter(this.radius);

  final double radius;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.red;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return (oldDelegate as CirclePainter).radius != radius;
  }
}

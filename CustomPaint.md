# CustomPaint

- ## What it does:
  The CustomPaint widget lets you implement very custom graphics

- ## How it works:
  Create a CustomPaint widget and give it a size. Added to that you need to give it a painter. You can create this painter by extending the CustomPainter class overriding the `paint` as well as the `shouldRepaint` methods. The shouldRepaint method is called when the CustomPainter is rebuild. You can tell the framework to reuse the previous result paint like so: `return old.myParameter != myParameter`. The `paint` method gives you a canvas and a size object. Using these two objects you can paint whatever you like.
    
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/custom_paint_example.dart)

  ```
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
  ```

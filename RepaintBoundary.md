# Align

- ## What it does:
  It creates a separate display list for its child, which can improve performance if the subtree repaints at different times than the surrounding parts of the tree.

- ## View Docs:
  [Align](https://api.flutter.dev/flutter/widgets/RepaintBoundary-class.html)

- ## Nice to know:
  - `RepaintBoundary`s have a small cpu and memeory cost, so when using it make sure it is really needed
  
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/repaint_boundary_example.dart)

  ```
  import 'dart:async';

  import 'package:flutter/material.dart';

  class RepaintBoundaryExample extends StatelessWidget {
    const RepaintBoundaryExample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const RepaintBoundary(
                  child: RotatedText(),
                ),
                Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ],
        ),
      );
    }
  }

  class RotatedText extends StatefulWidget {
    const RotatedText({Key? key}) : super(key: key);

    @override
    State<RotatedText> createState() => _RotatedTextState();
  }

  class _RotatedTextState extends State<RotatedText> {
    double _turns = 0;

    @override
    void initState() {
      Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          _turns++;
        });
      });
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      return AnimatedRotation(
          turns: _turns,
          duration: const Duration(seconds: 1),
          child: const Text("I am Rotating"));
    }
  }
  ```
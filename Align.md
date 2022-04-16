# Align

- ## What it does:
  It aligns its child within itself and optionally sizes itself based on the child's size.

- ## View Docs:
  [Align](https://api.flutter.dev/flutter/widgets/Align-class.html)

- ## Nice to know:
  - Using the `Alignment(valueX, valueY)` constructor, you can specify an alignment by giving a value between -1 and 1 for the x-Axis and a value between -1 and 1 for the y-Axis
  - `Align` can also be used to position widgets in a `Stack`
  
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/align_example.dart)

  ```
  import 'package:flutter/material.dart';

  class AlignExample extends StatelessWidget {
    const AlignExample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const GreenContainer(
                child: Align(
                  alignment: Alignment.center,
                  child: MyText(),
                ),
              ),
              const GreenContainer(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: MyText(),
                ),
              ),
              const GreenContainer(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: MyText(),
                ),
              ),
              const GreenContainer(
                child: Align(
                  alignment: Alignment(-0.5, -0.5),
                  child: MyText(),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Align(
                  heightFactor: 5,
                  widthFactor: 2,
                  alignment: Alignment.centerLeft,
                  child: Text("Example"),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  class GreenContainer extends StatelessWidget {
    const GreenContainer({this.child, Key? key}) : super(key: key);

    final Widget? child;
    @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.green,
        height: 100,
        width: 100,
        child: child,
      );
    }
  }

  class MyText extends StatelessWidget {
    const MyText({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return const Text("Example");
    }
  }
  ```
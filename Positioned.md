# Positioned

- ## What it does:
  It controls where a child of a Stack is positioned.

- ## View Docs:
  [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html)

- ## Nice to know:
  - If you want a widget to fill the whole `Stack` you can use the `Positioned.fill()` constructor.
  
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/positioned_example.dart)

  ```
  import 'package:flutter/material.dart';

  class PositionedExample extends StatelessWidget {
    const PositionedExample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    left: 30,
                    child: MyContainer(),
                  ),
                  const Positioned(
                    bottom: 30,
                    right: 30,
                    child: MyContainer(),
                  ),
                  const Positioned(
                    width: 100,
                    bottom: 10,
                    left: 10,
                    child: MyContainer(),
                  ),
                ],
              )),
        ),
      );
    }
  }

  class MyContainer extends StatelessWidget {
    const MyContainer({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 70,
        width: 70,
        color: Colors.green,
      );
    }
  }
  ```
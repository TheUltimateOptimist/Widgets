# LayoutBuilder

- ## What it does:
  It provides you with a build function that includes the current `constraints` besides the current `context` thus enabling you to build the UI based on the amount of available space.

- ## How it works:
  Create a LayoutBuilder and supply it with a `builder` function that takes the `context` and `constraints` and returns the Widget to be build.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/layout_builder_example.dart)

  ```
  import 'package:flutter/material.dart';

  //A red Container that fits the whole screen
  class LayoutBuilderExample extends StatelessWidget {
    const LayoutBuilderExample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) => Container(
              color: Colors.red,
              height: constraints.maxHeight,
              width: constraints.maxWidth,
            ),
          ),
        ),
      );
    }
  }
  ```
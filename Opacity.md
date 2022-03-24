# Opacity

- ## What it does:
  It applys an oppacity value to its child

- ## How it works:
  Just wrap widget whose opactiy you want to change with the Opacity widget and
  specify a double between 0.0 and 1.0 for the opacity.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/opacity_example.dart)

      import 'package:flutter/material.dart';

      class OpacityExample extends StatelessWidget {
        const OpacityExample({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: Center(
              child: Opacity(opacity: 0.5,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
              ),
            ),
          );
        }
      }
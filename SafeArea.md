# SafeArea

- ## What it does: 
  The SafeArea Widget checks the dimensions of the screen and makes sure that your widgets apply the necessary padding so they are not obscured due to for example rounded edges.

- ## How it works:
  Just wrap the Scaffold body with the SafeArea widget and you can enjoy the added safety. Additionally you can specify the directions in which the SafeArea Widget should apply the proper padding by setting the top, bottom, left, and right argument to either true or false.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/safearea_example.dart)

      import 'package:flutter/material.dart';

      class SomeScreen extends StatelessWidget {
        const SomeScreen({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: SafeArea(
              top: true,
              bottom: true,
              left: true,
              right: true,
              child: Center(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.red,
                ),
              ),
            ),
          );
        }
      }
  
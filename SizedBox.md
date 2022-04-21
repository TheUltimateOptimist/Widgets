# Positioned

- ## What it does:
  If given a child, this widget forces it to have a specific width and/or height.

- ## View Docs:
  [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html)
  
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/sized_box_example.dart)

  ```
  import 'package:flutter/material.dart';

  class SizedBoxExample extends StatelessWidget {
    const SizedBoxExample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Container(
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 100,
                child: Container(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
  ```
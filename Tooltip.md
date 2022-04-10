# Tooltip

- ## What it does:
  If a widget is wrapped in a tooltip a small description message will be show if it is tapped or long-pressed. Tooltips are also used by screen-readers.

- ## How it works:
  Wrap the widget you want to describe with the Tooltip widget. Then you need to give it a `message`. Added to that you can specify a `verticalOffset`, `height`.

- ## Nice to know:
  Some Material widgets come with tooltip included:
  ```
  IconButton(
      icon: Icon(Icons.high_quality),
      tooltip: 'description'
  )
  ```

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/tooltip_example.dart)

  ```
  import 'package:flutter/material.dart';

  class TooltipExample extends StatelessWidget {
    const TooltipExample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Tooltip(
            message: "Some Container",
            height: 50,
            verticalOffset: 20,
            child: Container(
              color: Colors.black,
            ),
          ),
        ),
      );
    }
  }
  ```


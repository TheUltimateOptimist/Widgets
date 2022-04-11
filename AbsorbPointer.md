# AbsorbPointer

- ## What it does:
  It lets you block tapping for parts of the tree.

- ## How it works:
  Simply wrap the widgets you do not want to react to tap-events with the `AbsorbPointer`. You can easily enable or disable tap-events by setting the `absorbing` property. By setting the `ignoringSemantics` you can specify whether screen readers or other features will ignore the part of the tree wrapped with the `AbsorbPointer`.
  
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/sliver_list_example.dart)

  ```
  import 'package:flutter/material.dart';

  class AbsorbPointerExample extends StatelessWidget {
    const AbsorbPointerExample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Enabled",
              ),
            ),
            AbsorbPointer(
              absorbing: true,
              ignoringSemantics: false,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Disabled",
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
  ```
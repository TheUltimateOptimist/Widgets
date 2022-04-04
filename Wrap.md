# Wrap

- ## What it does:
  The Wrap widget lays out its children one after the other, but if it runs out of space it just wraps to the next line. It is very much like a column or row only that it jumps to next line if it runs out of space.

- ## How it works:
  Just wrap any number of widgets with Wrap and they will be layed out along the axis of the given direction jumping to the next line if there is no space left. To get an overview of all of the additional arguments that can be specified take a look at the code example.

- ## Nice to know:
  The Wrap Widget takes as little space as possible along the main and cross axis which sets it apart from a column or row and can therefore be a little counterintuitive.

- ## Code Example: 
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/wrap_example.dart)

      import 'package:flutter/material.dart';

      class WrapExample extends StatelessWidget {
        const WrapExample({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Wrap(
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.spaceAround,
                alignment: WrapAlignment.end,
                textDirection: TextDirection.ltr,
                verticalDirection: VerticalDirection.down,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 10,
                spacing: 10,
                children: [
                  for (int i = 0; i < 10; i++)
                    Container(
                      color: Colors.red,
                      height: i % 2 == 0 ? 60 : 100,
                      width: 80,
                    ),
                ],
              ),
            ),
          );
        }
      }

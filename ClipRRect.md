# ClipRRect

- ## What it does:
  It lets you add a borderradius to any widget by wrapping it with ClipRRect.

- ## How it works:
  Wrap the widget you want to add a borderradius to with the ClipRRect widget and specify the borderRadius. In addition you can customize the edge via the clipBehaviour property.

- ## Nice to know:
  You can also use a transparent image as placeholder using the transparent_image package. Simply use the FadeInImage.memoryNetwork() constructor and set the placeholder attribute to kTransparentImage.
  
- ## Example Code: 
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/clip_r_rect_example.dart)

      import 'package:flutter/material.dart';

      class ClipRRectExample extends StatelessWidget {
        const ClipRRectExample({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: Center(
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
                child: Container(
                  color: Colors.black,
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          );
        }
      }
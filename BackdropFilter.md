# Backdrop Filter

- ## What it does:
  It applies a filter to the existing painted content and then paints child.

- ## View Docs:
  [BackdropFilter](https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html)

- ## Be aware of:
  - The `child` of the `BackdropFilter` is painted on top of the filter. So in order to make the filter visible you need to give it an invisible child.
  - The `BackdropFilter` widget is usually used in combination with the `Stack` widget.
  - If the `BackdropFilter` needs to be applied to an area that exactly matches its child, wrap the `BackdropFilter` with a clip widget that clips exactly to  that child
  
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/backdrop_filter_example.dart)

    ```
    import 'dart:typed_data';
    import 'dart:ui';

    import 'package:flutter/material.dart';

    class FilterBox extends StatelessWidget {
    const FilterBox({required this.filter, Key? key}) : super(key: key);

    final ImageFilter filter;

    @override
    Widget build(BuildContext context) {
        return SizedBox(
        height: 150,
        width: 150,
        child: Stack(
            children: [
            Center(
                child: Container(
                color: Colors.black,
                height: 100,
                width: 100,
                ),
            ),
            Center(
                child: ClipRect(
                child: BackdropFilter(
                    filter: filter,
                    child: Container(
                    color: Colors.black.withOpacity(0),
                    ),
                ),
                ),
            ),
            ],
        ),
        );
    }
    }

    class BackdropFilterExample extends StatelessWidget {
    const BackdropFilterExample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        final Float64List matrix = Float64List(16);
        Matrix4.translationValues(10, 10, 0).copyIntoArray(matrix);

        return Scaffold(
        body: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                FilterBox(
                filter: ImageFilter.blur(),
                ),
                FilterBox(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                ),
                FilterBox(
                filter: ImageFilter.compose(
                    outer: ImageFilter.blur(),
                    inner: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                ),
                ),
                Row(
                children: [
                    ClipRect(
                    child: SizedBox(
                        height: 130,
                        width: 130,
                        child: Center(
                        child: Container(
                            color: Colors.black,
                            height: 100,
                            width: 100,
                            child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Container(
                                color: Colors.black.withOpacity(0),
                            ),
                            ),
                        ),
                        ),
                    ),
                    ),
                    FilterBox(
                    filter: ImageFilter.matrix(matrix),
                    ),
                ],
                ),
            ],
            ),
        ),
        );
    }
    }
    ```
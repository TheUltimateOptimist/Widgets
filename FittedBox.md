# FittedBox

- ## What it does:
  A `FittedBox` makes its `child` fit in the given space.

- ## How it works:
  Wrap the widget you want to fit in a given space with a `FittedBox`. Next you can specify a `BoxFit` value like for example `BoxFit.cover` for its `fit` attribute. Added to that the `clip` attribute can be changed to for example `Clip.hardEdge` to clip the child into the FittedBox. Moreover the `alignment` attribute lets you specify how to align a `FittedBox`'s `child` if there is space left inside the `FittedBox`.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/fitted_box_example.dart)

  ```
  import 'package:flutter/material.dart';

  class FittedBoxExample extends StatelessWidget {
    const FittedBoxExample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: const [
            CustomSizedBox(
              child: FittedBox(
                clipBehavior: Clip.hardEdge,
                fit: BoxFit.cover,
                child: ContentContainer(),
              ),
            ),
            CustomSizedBox(
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                child: ContentContainer(),
              ),
            ),
            CustomSizedBox(
              child: FittedBox(
                fit: BoxFit.fill,
                child: ContentContainer(),
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      );
    }
  }

  class CustomSizedBox extends StatelessWidget {
    const CustomSizedBox({Key? key, required this.child}) : super(key: key);

    final Widget child;

    @override
    Widget build(BuildContext context) {
      return SizedBox(
        height: 100,
        width: 100,
        child: child,
      );
    }
  }

  class ContentContainer extends StatelessWidget {
    const ContentContainer({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 100,
        width: 200,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.green,
            ],
          ),
        ),
      );
    }
  }
  ```
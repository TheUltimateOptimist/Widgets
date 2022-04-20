# AnimatedBuilder

- ## What it does:
  It is a general-purpose widget for building animations being useful for more complex widgets that wish to include an animation as part of a larger build function.

- ## View Docs:
  [AnimatedBuilder](https://api.flutter.dev/flutter/widgets/AnimatedBuilder-class.html)
  
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/animated_builder_example.dart)

  ```
  import 'dart:math';

  import 'package:flutter/material.dart';

  class AnimatedBuilderExample extends StatefulWidget {
    const AnimatedBuilderExample({Key? key}) : super(key: key);

    @override
    State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
  }

  class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
      with SingleTickerProviderStateMixin {
    late final AnimationController _controller;
    late final Animation _animation;

    @override
    void initState() {
      _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          seconds: 1,
        ),
      );
      _animation = Tween(begin: 0, end: 2 * pi).animate(_controller);
      _controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reset();
          _controller.forward();
        }
      });
      _controller.forward();
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: AnimatedBuilder(
            child: const FlutterLogo(
              size: 100,
            ),
            animation: _animation,
            builder: (context, child) {
              return Transform.rotate(
                angle: _animation.value.toDouble(),
                child: child,
              );
            },
          ),
        ),
      );
    }
  }
  ```
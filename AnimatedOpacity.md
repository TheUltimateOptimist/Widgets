# AnimatedOpacity

## What it does:
It applys an opacity value to its child animating any opacity change that occurs

## How it works:
Just wrap the widget whose opacity you want to change with the AnimatedOpacity widget and specify a duration for the animation as well as a double value for the opacity between 0.0 and 1.0. Change this opacity value somewhere else in the code, call setState and enjoy the animation.

## Code Example:
    import 'package:flutter/material.dart';

    class AnimatedOpacityExample extends StatefulWidget {
      const AnimatedOpacityExample({Key? key}) : super(key: key);

      @override
      State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
    }

    class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
      double _opacity = 1.0;

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Center(
            child: AnimatedOpacity(
              duration: const Duration(
                seconds: 3,
              ),
              opacity: _opacity,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _opacity = _opacity > 0.9 ? 0.3 : 1.0;
                  });
                },
                child: Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
        );
      }
    }
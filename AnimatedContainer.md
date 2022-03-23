# Animated Container

- ## What it does:
  Animated Container lets you implement implicit animations regarding a Container.

- ## How it works:
  - ### in general:
    The Container is built with a specific starting value. When this value changes and the Container is rebuilt it will perform a linear interpolation between these tow values.

  - ### in code:
    Specifiy a starting value for the property you want to animate over. It works with a bunch of different properties like color, alignment, borderradius, etc. Then change the starting value and call setState and watch the magic happen. Additionally you can specify the duration of the animation as well as the curve to use.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/animated_container_example.dart)

      import 'package:flutter/material.dart';

      class AnimatedContainerExample extends StatefulWidget {
        const AnimatedContainerExample({Key? key}) : super(key: key);

        @override
        State<AnimatedContainerExample> createState() =>
            _AnimatedContainerExampleState();
      }

      class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
        final Duration duration = const Duration(seconds: 2);
        Color _color = Colors.black;
        double _width = 40;
        Gradient _gradient = const LinearGradient(colors: [Colors.green, Colors.blue]);
        double _radius = 0;

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedContainer(
                  color: _color,
                  height: 70,
                  width: 70,
                  duration: duration,
                  curve: Curves.bounceIn,
                ),
                AnimatedContainer(
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: _gradient,
                  ),
                  width: 70,
                  duration: duration,
                ),
                AnimatedContainer(
                  color: Colors.black,
                  height: 70,
                  width: _width,
                  duration: duration,
                ),
                AnimatedContainer(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        _radius,
                      ),
                    ),
                  ),
                  duration: duration,
                ),
                AnimatedContainer(
                  width: _width,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        _radius,
                      ),
                    ),
                  ),
                  duration: duration,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_color == Colors.black) {
                        _color = Colors.red;
                        _width = 70;
                        _gradient = const LinearGradient(colors: [Colors.green, Colors.red]);
                        _radius = 15;
                      } else {
                        _color = Colors.black;
                        _width = 40;
                        _gradient = const LinearGradient(colors: [Colors.green, Colors.blue]);
                        _radius = 0;
                      }
                    });
                  },
                  child: const Text(
                    "Start Animation",
                  ),
                ),
              ],
            ),
          );
        }
      }

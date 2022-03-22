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

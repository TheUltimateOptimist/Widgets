import 'dart:async';

import 'package:flutter/material.dart';

class RepaintBoundaryExample extends StatelessWidget {
  const RepaintBoundaryExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const RepaintBoundary(
                child: RotatedText(),
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ],
      ),
    );
  }
}

class RotatedText extends StatefulWidget {
  const RotatedText({Key? key}) : super(key: key);

  @override
  State<RotatedText> createState() => _RotatedTextState();
}

class _RotatedTextState extends State<RotatedText> {
  double _turns = 0;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _turns++;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
        turns: _turns,
        duration: const Duration(seconds: 1),
        child: const Text("I am Rotating"));
  }
}

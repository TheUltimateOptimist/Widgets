import 'dart:math';

import 'package:flutter/material.dart';

class TransformExample extends StatefulWidget {
  const TransformExample({Key? key}) : super(key: key);

  @override
  State<TransformExample> createState() => _TransformExampleState();
}

class _TransformExampleState extends State<TransformExample> {
  double _turns = 0;

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
      child: AnimatedRotation(
        turns: _turns,
        duration: const Duration(
          seconds: 3,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Transform",
            ),
          ),
          body: Column(
            children: [
              Transform.rotate(
                angle: pi / 2,
                child: const BlackContainer(),
              ),
              SizedBox(
                height: 100,
                width: 200,
                child: Center(
                  child: Transform.scale(
                    scaleX: 2,
                    scaleY: 1,
                    child: const ClipOval(
                      child: BlackContainer(),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(20, -10),
                child: const BlackContainer(),
              ),
              Transform(
                transform: Matrix4.skewX(-0.3),
                child: const BlackContainer(),
              ),
              ElevatedButton(
                child: const Text("Start"),
                onPressed: () {
                  setState(() {
                    _turns++;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlackContainer extends StatelessWidget {
  const BlackContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.black,
    );
  }
}

import 'package:flutter/material.dart';

class OpacityExample extends StatelessWidget {
  const OpacityExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Opacity(opacity: 0.5,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

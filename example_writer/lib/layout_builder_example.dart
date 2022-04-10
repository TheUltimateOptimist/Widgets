import 'package:flutter/material.dart';

//A red Container that fits the whole screen
class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => Container(
            color: Colors.red,
            height: constraints.maxHeight,
            width: constraints.maxWidth,
          ),
        ),
      ),
    );
  }
}

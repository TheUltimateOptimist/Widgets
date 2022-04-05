import 'package:flutter/material.dart';

class ClipRRectExample extends StatelessWidget {
  const ClipRRectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          child: Container(
            color: Colors.black,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}

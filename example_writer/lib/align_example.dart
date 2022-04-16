import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  const AlignExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const GreenContainer(
              child: Align(
                alignment: Alignment.center,
                child: MyText(),
              ),
            ),
            const GreenContainer(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: MyText(),
              ),
            ),
            const GreenContainer(
              child: Align(
                alignment: Alignment.bottomRight,
                child: MyText(),
              ),
            ),
            const GreenContainer(
              child: Align(
                alignment: Alignment(-0.5, -0.5),
                child: MyText(),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Align(
                heightFactor: 5,
                widthFactor: 2,
                alignment: Alignment.centerLeft,
                child: Text("Example"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GreenContainer extends StatelessWidget {
  const GreenContainer({this.child, Key? key}) : super(key: key);

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 100,
      width: 100,
      child: child,
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Example");
  }
}

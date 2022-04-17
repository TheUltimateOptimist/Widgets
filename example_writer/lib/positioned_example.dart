import 'package:flutter/material.dart';

class PositionedExample extends StatelessWidget {
  const PositionedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                const Positioned(
                  top: 30,
                  left: 30,
                  child: MyContainer(),
                ),
                const Positioned(
                  bottom: 30,
                  right: 30,
                  child: MyContainer(),
                ),
                const Positioned(
                  width: 100,
                  bottom: 10,
                  left: 10,
                  child: MyContainer(),
                ),
              ],
            )),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      color: Colors.green,
    );
  }
}

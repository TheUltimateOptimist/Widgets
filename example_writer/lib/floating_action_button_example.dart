import 'dart:math';

import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatelessWidget {
  const FloatingActionButtonExample({Key? key}) : super(key: key);

  static Widget child = const Icon(Icons.add);
  static Color backGroundColor = Colors.black;
  static Color foreGroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    int randomNumber = Random().nextInt(4);
    late Widget fButton;
    switch (randomNumber) {
      case 0:
        fButton = const NormalFButton();
        break;
      case 1:
        fButton = const LargeFButton();
        break;
      case 2:
        fButton = const SmallFButton();
        break;
      default:
        fButton = const StadiumShapedFButton();
    }
    return Scaffold(
      floatingActionButton: fButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class NormalFButton extends StatelessWidget {
  const NormalFButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: FloatingActionButtonExample.child,
      backgroundColor: FloatingActionButtonExample.backGroundColor,
      foregroundColor: FloatingActionButtonExample.foreGroundColor,
    );
  }
}

class LargeFButton extends StatelessWidget {
  const LargeFButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: FloatingActionButtonExample.child,
      backgroundColor: FloatingActionButtonExample.backGroundColor,
      foregroundColor: FloatingActionButtonExample.foreGroundColor,
    );
  }
}

class SmallFButton extends StatelessWidget {
  const SmallFButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: FloatingActionButtonExample.child,
      backgroundColor: FloatingActionButtonExample.backGroundColor,
      foregroundColor: FloatingActionButtonExample.foreGroundColor,
    );
  }
}

class StadiumShapedFButton extends StatelessWidget {
  const StadiumShapedFButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: FloatingActionButtonExample.child,
      backgroundColor: FloatingActionButtonExample.backGroundColor,
      foregroundColor: FloatingActionButtonExample.foreGroundColor,
    );
  }
}

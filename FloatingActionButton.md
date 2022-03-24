# Floating Action Button

- ## What it does:
  The FloatingActionButton widget displays an ActionButton at the lower end of the screen, on top of all the other content of the screen

- ## How it works:
  The FloatingActionButton needs to be used paired with the Scaffold Widget. It needs to be assigned to the floatingActionButton property of the Scaffold Widget. Additionally you need to specify the onPressed property of the FloatingActionButton. Moreover the FloatingActionButton lets you style it further by updating its foregroundColor, backgroundColor along other properties. It can also be given any Widget as its child.

- ## Constructors:
  Besides the normal FloatingActionButton() constructor you can also use the FloatingActionButton.small() or FloatingActionButton.large() constructor to create a small or large FloatingActionButton. Furthermore the FloatingActionButton.extended() constructor lets you create a stadium shaped FloatingActionButton.

- ## Nice to know:
  The scaffold has a floatingActionButton property that lets you change the location of the
  FloatingActionButton. Moreover you can embed the FloatingActionButton into your BottomNavigationBar using FloatingActionButtonLocation.endDocked for example.

- ## Example Code: 
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/floating_action_button_example.dart)

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
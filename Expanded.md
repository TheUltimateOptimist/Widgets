# Expanded

- ## What it does:
  The Expanded widget makes its child fill all the available space within a row or column.

- ## How it works:
  - ### a) under the hood:
    When a column or row lays out its children the inflexible ones are layed out first. Second the remaining space is divided between the flexible ones.

  - ### b) in code:
    Just wrap the widget you want to make stretch along all of the available space with the Expanded widget. You can also set the flex factor, which will have an affect in the event of competition. For example if there are two Expanded widgets in one row, the first having a flex factor of 2 and the second a flex factor of 1, the first one will receive twice as much space as the second one.
    
- ## Code Example:
      import 'package:flutter/material.dart';

      class ExpandedExample extends StatelessWidget {
        const ExpandedExample({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 50,
                      color: Colors.blue,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      }
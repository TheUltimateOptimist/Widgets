# InheritedWidget

- ## What it does:
  It gives deeply nested widgets access to data stored near to the top of the widget tree. It allows you to effectively lift the state up.

- ## How it works:
  - ### in code:
    Make you own sub class of InheritedWidget , add any data fields you like and override the updateShouldNotify method. The updateShouldNotify method determines whether dependent widgets should get rebuild when the inherited widget is replaced. Decendents can then inherit from the inherited widget in their build methods.
  - ### in general:
    The inherited widget sits on top of the widget tree. When one of its field changes, it is replaced with a new inherited widget that reflects the field change. As a result all of its dependents are rebuild if the updateShouldNotify method outputs true.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/inherited_widget_example.dart)

      import 'package:flutter/material.dart';

      class InheritedWidgetExample extends StatefulWidget {
        const InheritedWidgetExample({Key? key}) : super(key: key);

        @override
        State<InheritedWidgetExample> createState() => _InheritedWidgetExampleState();
      }

      class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {
        int number = 0;

        void incremenNumber(){
          setState(() {
            number++;
          });
        }

        @override
        Widget build(BuildContext context) {
          return MyData(number: number,incrementNumber: incremenNumber,
            child: Scaffold(
              body: Builder(
                builder: (innerContext) {
                  return Column(
                    children: [
                    Text(
                          MyData.of(innerContext).number.toString(),
                        ),
                      ElevatedButton(
                            onPressed: () {
                              MyData.of(innerContext).incrementNumber();
                            },
                            child: const Text(
                              "Add one",
                            ),
                          ),
                    ],
                  );
                }
              ),
            ),
          );
        }
      }

      class MyData extends InheritedWidget {
        const MyData({required final Widget child, this.number = 0, required this.incrementNumber,Key? key})
            : super(
                child: child,
                key: key,
              );

        final void Function() incrementNumber;
        final int number;

        @override
        bool updateShouldNotify(covariant InheritedWidget oldWidget) {
          
          if ((oldWidget as MyData).number != number) {
            return true;
          }
          return false;
        }

        static MyData of(BuildContext context) {
          final MyData? result = context.dependOnInheritedWidgetOfExactType<MyData>();
          assert(result != null, "No MyData found in this BuildContext");
          return result!;
        }
      }
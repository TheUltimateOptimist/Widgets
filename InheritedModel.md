# InheritedModel

- ## What it does:
  It gives deeply nested widgets access to data stored near the top of the widget tree. It allows you to effectively lift the state up.

- ## How it works:
    Make you own sub class of InheritedModel , add any data fields you like and override the updateShouldNotify and the updateShouldNotifyDependent method. When the InheritedModel is replaced the 
    updateShouldNotify mehod runs first. If it returns true the updateShouldNotifyDependent method runs once for each descendent as well and determines whether is should be rebuild depending on the aspect it provided. The aspect of a descendent tells the updateShouldNotifyDependent method which fields any particular descendent cares about. Decendents inherit from the InheritedModel in their build methods.

- ## Difference to InheritedWidget:
  The Inherited Widget always rebuilds all of its descendents if the updateShouldNotifyMethod outputs true. In contrast, the InheritedModel Widget runs the updateShouldNotifyDependent method for each descendent and determines whether it should be rebuild specifically for each descendent using its aspect argument.

- ## Nice to know:
  - If a descendant does not specify any aspect argument it will always be rebuild.
  - If the updateShouldNotify method already returns false no updateShouldNotifyDependent method will be run

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/inherited_model_example.dart)

      import 'package:flutter/material.dart';

      class InheritedModelExample extends StatefulWidget {
        const InheritedModelExample({Key? key}) : super(key: key);

        @override
        State<InheritedModelExample> createState() => _InheritedModelExampleState();
      }

      class _InheritedModelExampleState extends State<InheritedModelExample> {
        int number = 0;

        void incremenNumber() {
          setState(() {
            number++;
          });
        }

        @override
        Widget build(BuildContext context) {
          return MyData(
            number: number,
            incrementNumber: incremenNumber,
            child: Scaffold(
              body: Column(
                children: const [
                  CounterText(),
                  IncrementButton(),
                ],
              ),
            ),
          );
        }
      }

      class CounterText extends StatelessWidget {
        const CounterText({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Text(MyData.of(context, "counter").number.toString());
        }
      }

      class IncrementButton extends StatelessWidget {
        const IncrementButton({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return ElevatedButton(
            onPressed: () {
              MyData.of(context, "").incrementNumber();
            },
            child: const Text(
              "Add one",
            ),
          );
        }
      }

      class MyData extends InheritedModel<String> {
        const MyData(
            {required final Widget child,
            this.number = 0,
            required this.incrementNumber,
            Key? key})
            : super(
                child: child,
                key: key,
              );

        final void Function() incrementNumber;
        final int number;

        static MyData of(BuildContext context, [String? aspect]) {
          final MyData? result = InheritedModel.inheritFrom(context, aspect: aspect);
          assert(result != null, "No MyData found in this BuildContext");
          return result!;
        }

        @override
        bool updateShouldNotify(covariant InheritedWidget oldWidget) {
          return true;
        }

        @override
        bool updateShouldNotifyDependent(
            covariant InheritedModel<String> oldWidget, Set<String> dependencies) {
          if (dependencies.contains("counter")) {
            return true;
          }
          return false;
        }
      }
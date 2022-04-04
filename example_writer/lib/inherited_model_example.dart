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

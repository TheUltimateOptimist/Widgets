import 'package:flutter/material.dart';

class InheritedWidgetExample extends StatefulWidget {
  const InheritedWidgetExample({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetExample> createState() => _InheritedWidgetExampleState();
}

class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {
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
    return Text(MyData.of(context).number.toString());
  }
}

class IncrementButton extends StatelessWidget {
  const IncrementButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        MyData.of(context).incrementNumber();
      },
      child: const Text(
        "Add one",
      ),
    );
  }
}

class MyData extends InheritedWidget {
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

import 'dart:math';

import 'package:test/test.dart';

void main(List<String> args) {
  // testFunction("addInts", [
  //   testInput("even numbers", addInts(2, 2), equals(4)),
  //   testInput("uneven numbers", addInts(3,5), equals(8))
  // ]);
  count().listen((value) {
    print(value);
  });
}

int addInts(int a, int b) {
  return a + b;
}

testFunction(String functionName, List<void Function(String name)> testCases) {
  for (var testCase in testCases) {
    testCase(functionName);
  }
}

class TestCase {
  final String inputDescription;
  final dynamic actual;
  final dynamic matcher;

  TestCase(this.inputDescription, this.actual, this.matcher);

  void test() {
    expect(actual, matcher);
  }
}

void Function(String functionName) testInput(
    String inputDescription, dynamic actual, dynamic matcher) {
  return (String functionName) {
    test("$functionName Test with $inputDescription", () {
      expect(actual, matcher);
    });
  };
}

Stream<int> count() async* {
  int i = 0;
  while (true) {
    yield i;
    await Future.delayed(
      const Duration(
        seconds: 1,
      ),
    );
    i++;
  }
}

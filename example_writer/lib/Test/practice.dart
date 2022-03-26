import 'dart:math';

import 'package:test/test.dart';
void main(List<String> args) {
  // testFunction("add Ints", [
  //   TestCase("2 even numbers", addInts(2,4), equals(6)),
  //   TestCase("2 uneven numbers", addInts(3,5), equals(8))
  // ]);
  testFunction("addInts", [
    testInput("even numbers", addInts(2, 2), equals(4)),
    testInput("uneven numbers", addInts(3,5), equals(8))
  ]);
}
int addInts(int a, int b){
  return a + b;
}

testFunction(String functionName, List<void Function(String name)> testCases){
  for(var testCase in testCases){
    testCase(functionName);
  }
}

testClass(){
  
}

class TestCase{
  final String inputDescription;
  final dynamic actual;
  final dynamic matcher;

  TestCase(this.inputDescription, this.actual, this.matcher);

  void test(){
    expect(actual, matcher);
  }
}

void Function(String functionName) testInput(String inputDescription, dynamic actual, dynamic matcher){
  return (String functionName){
     test("$functionName Test with $inputDescription", (){
      expect(actual, matcher);
    });
  };
}
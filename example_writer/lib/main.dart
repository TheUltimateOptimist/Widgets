import 'package:example_writer/animated_container_example.dart';
import 'package:example_writer/animated_opacity_example.dart';
import 'package:example_writer/fade_transition_example.dart';
import 'package:example_writer/floating_action_button_example.dart';
import 'package:example_writer/future_builder_example.dart';
import 'package:example_writer/opacity_example.dart';
import 'package:example_writer/wrap_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FloatingActionButtonExample(),
    );
  }
}
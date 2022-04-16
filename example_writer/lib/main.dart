// ignore_for_file: unused_import
import 'package:example_writer/absorb_pointer_example.dart';
import 'package:example_writer/align_example.dart';
import 'package:example_writer/animated_container_example.dart';
import 'package:example_writer/animated_opacity_example.dart';
import 'package:example_writer/backdrop_filter_example.dart';
import 'package:example_writer/clip_r_rect_example.dart';
import 'package:example_writer/fade_in_image_example.dart';
import 'package:example_writer/fade_transition_example.dart';
import 'package:example_writer/fitted_box_example.dart';
import 'package:example_writer/floating_action_button_example.dart';
import 'package:example_writer/future_builder_example.dart';
import 'package:example_writer/hero_example.dart';
import 'package:example_writer/inherited_model_example.dart';
import 'package:example_writer/inherited_widget.example.dart';
import 'package:example_writer/layout_builder_example.dart';
import 'package:example_writer/opacity_example.dart';
import 'package:example_writer/pageview_example.dart';
import 'package:example_writer/sliver_app_bar_example.dart';
import 'package:example_writer/sliver_grid_example.dart';
import 'package:example_writer/sliver_list_example.dart';
import 'package:example_writer/stream_builder_example.dart';
import 'package:example_writer/table_example.dart';
import 'package:example_writer/tooltip_example.dart';
import 'package:example_writer/transform_example.dart';
import 'package:example_writer/wrap_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() async{
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
      ),home: const AlignExample(),
    );
  }
}
# StreamBuilder

- ## What it does:
  The StreamBuilder listens to a stream and rebuilds the UI whenever a new even occurs.

- ## How it works:
  Give the StreamBuilder a stream and a builder. In the builder method which takes context and snapshot as its arguments, you can deteremine the current state of the stream using snapshot.connectionState and show the appropriate widgets. Using the initialData attribute you can also specify some inital data to display when the StreamBuilder hasn't yet received any data from its stream.
  
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/stream_builder_example.dart)

      import 'package:flutter/material.dart';

      class StreamBuilderExample extends StatelessWidget {
        const StreamBuilderExample({Key? key}) : super(key: key);

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

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: Center(
              child: StreamBuilder(
                  stream: count(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data.toString());
                    }
                    return const CircularProgressIndicator();
                  }),
            ),
          );
        }
      }


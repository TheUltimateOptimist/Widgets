# FutureBuilder

## What it does:
A FutureBuilder lets you decide what to build dependent on the state of a future.

## How it works:
Give the FutureBuilder a future and a builder. In the builder method which takes context and snapshot as its arguments, you can deteremine the current state of the future using snapshot.connectionState and show the appropriate widgets.

## Example Code:
    import 'package:flutter/material.dart';

    class FutureBuilderExample extends StatelessWidget {
      const FutureBuilderExample({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Center(
            child: FutureBuilder(
              future: Future.delayed(
                const Duration(
                  seconds: 2,
                ),
                () => "Finished"
              ),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return const Text(
                      "An error occured",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    );
                  } else {
                    return Text(snapshot.data.toString());
                  }
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ),
        );
      }
    }
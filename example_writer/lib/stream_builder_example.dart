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

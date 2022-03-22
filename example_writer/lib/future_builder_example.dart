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

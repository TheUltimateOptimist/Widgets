import 'package:flutter/material.dart';

class DismissibleExample extends StatelessWidget {
  const DismissibleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        for (int i = 0; i < 20; i++)
          Dismissible(
            direction: DismissDirection.horizontal,
            child: const ListTile(
              title: Text("SomeTitle"),
            ),
            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.green),
            key: ValueKey(i),
            onDismissed: (direction){
              print("Dissmision direction: ${direction.name}");
            },
          ),
      ]),
    );
  }
}

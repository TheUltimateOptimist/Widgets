import 'package:flutter/material.dart';

class AbsorbPointerExample extends StatelessWidget {
  const AbsorbPointerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Enabled",
            ),
          ),
          AbsorbPointer(
            absorbing: true,
            ignoringSemantics: false,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Disabled",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TooltipExample extends StatelessWidget {
  const TooltipExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
          message: "Some Container",
          height: 50,
          verticalOffset: 20,
          child: Container(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

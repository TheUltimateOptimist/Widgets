import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Wrap(
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.spaceAround,
          alignment: WrapAlignment.end,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.down,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 10,
          spacing: 10,
          children: [
            for (int i = 0; i < 10; i++)
              Container(
                color: Colors.red,
                height: i % 2 == 0 ? 60 : 100,
                width: 80,
              ),
          ],
        ),
      ),
    );
  }
}

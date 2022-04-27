import 'package:flutter/material.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({Key? key}) : super(key: key);

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  List<String> dynamicList = ["FirstElement", "SecondElement", "ThirdElement"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedList(
          initialItemCount: 3,
          itemBuilder: (context, index, animation) {
            return SlideTransition(position: animation.drive(Tween()),
              child: ListTile(
                title:  Text(dynamicList[index]),
                onTap: () {
                  dynamicList.insert(index + 1, "SomeInsertion");
                    AnimatedList.of(context).insertItem(index + 1);
                  
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

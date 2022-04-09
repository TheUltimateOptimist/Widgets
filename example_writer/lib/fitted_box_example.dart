import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomSizedBox(
            child: FittedBox(
              clipBehavior: Clip.hardEdge,
              fit: BoxFit.cover,
              child: ContentContainer(),
            ),
          ),
          CustomSizedBox(
            child: FittedBox(
              fit: BoxFit.contain,
              alignment: Alignment.center,
              child: ContentContainer(),
            ),
          ),
          CustomSizedBox(
            child: FittedBox(
              fit: BoxFit.fill,
              child: ContentContainer(),
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: child,
    );
  }
}

class ContentContainer extends StatelessWidget {
  const ContentContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.green,
          ],
        ),
      ),
    );
  }
}

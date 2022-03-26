import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  PageViewExample({Key? key}) : super(key: key);

  final PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(//needed to enable scrolling on web
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: pageController,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Scaffold(
            body: Center(
              child: Text(
                "Page ${index + 1}",
              ),
            ),
          );
        },
      ),
    );
  }
}

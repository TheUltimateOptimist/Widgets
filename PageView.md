# PageView

- ## What it does:
  Lets you create a collection of different screens that the user can swipe between

- ## How it works:
  First, create a PageConroller with the initialPage propertie. Second, create the PageView widget giving it the already created PageController as its controller propertie, and as many swipable screens as you like as its children propertie. Additionally you can specifiy a ScrollDirection for the scrollDirection property to manage the direction in which to swipe between the different pages.

- ## Nice to know:
  Use the PageView.builder constructor if the amount of pages is huge. Using PageView.builder makes sure that only the pages that are visible are built. Therefore it achieves better performance on big lists of pages.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/pageview_example.dart)

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
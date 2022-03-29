# SliverAppBar

- ## What it does:
  Resembles the normal AppBar, but has a lot of additional features regarding scrolling. For example it can be configured to disappear when scrolling down and appear again when scrolling up.

- ## How it works:
  First create a CustomScrollView. The CustomScrollView then takes a list of slivers. The SliverAppBar has to be added to this list of slivers. After that you can configure how the SliverAppBar should behave when the user is scrolling

- ## Configurations:
  - FloatingAppBar   
    Makes the SliverAppBar appear again as soon as the user scrolls back again no matter how far he has scrolled before. Set the floating attribute to true.
  - Always show elevation AppBar   
    Normally the SliverAppBar's elvation is only applied if slivers are being scrolled beneath it. To always show elevation set forceElevation to true.
  - Always visible AppBar   
    If you want the SliverAppBar to always stay visible you can set the pinned attribute to true.
  - Expanded Space AppBar   
    You can give the SliverAppBar additional space below it that then disappears while scrolling. Set the expandedHeight to achieve this. Moreover you can specify the flexibleSpace attribute to show something in that additional space. Usually the FlexibleSpaceBar widget is used to control the additional space.
  - Stretch Over Scroll SliverAppBar   
    If stretch is set to true the SliverAppBar will stretch to fill the space resulting from over scrolling. Via the onStretchTrigger attribute you can give the SliverAppBar a callback that gets executed whenever it is overscrolled by a certain amount. The minimum amount it has to be overscrolled can be controlled by setting the stretchTriggerOffset attribute.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/sliver_app_bar_example.dart)

      import 'dart:math';

      import 'package:flutter/material.dart';

      class SliverAppBarExample extends StatelessWidget {
        const SliverAppBarExample({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          late SliverAppBar sliverAppBar;
          int id = Random().nextInt(5);
          if (id == 0) {
            sliverAppBar = const SliverAppBar(
              title: Text(
                "Floating App Bar",
              ),
              backgroundColor: Colors.green,
              floating: true,
            );
          } else if (id == 1) {
            sliverAppBar = const SliverAppBar(
              title: Text(
                "Always show elevation App Bar",
              ),
              backgroundColor: Colors.green,
              forceElevated: true,
            );
          } else if (id == 2) {
            sliverAppBar = const SliverAppBar(
              title: Text(
                "Always visible App Bar",
              ),
              backgroundColor: Colors.green,
              pinned: true,
            );
          } else if (id == 3) {
            sliverAppBar = const SliverAppBar(
              title: Text(
                "Expanded Space App Bar",
              ),
              backgroundColor: Colors.green,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Expanded Area App Bar",
                ),
              ),
            );
          } else if (id == 4) {
            sliverAppBar = SliverAppBar(
              title: const Text(
                "Stretch over scroll App Bar",
              ),
              backgroundColor: Colors.green,
              stretch: true,
              onStretchTrigger: () async {
                print("Overstretched");
              },
            );
          }

          return Scaffold(
            body: CustomScrollView(
              slivers: [
                sliverAppBar,
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return ListTile(
                        title: Text(
                          "Tile ${index + 1}",
                        ),
                      );
                    },
                    childCount: 15,
                  ),
                ),
              ],
            ),
          );
        }
      }
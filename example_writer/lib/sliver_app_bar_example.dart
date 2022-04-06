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

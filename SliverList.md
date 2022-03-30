# SliverAppBar

- ## What it does:
  A SliverList is comparable to the normal ListView but is a sliver and can therefore be added to the list of slivers of a CustomScrollView. As a result the SliverList shines when you want to achieve custom scrolling like for example combining a List with a Grid in one ScrollView.

- ## How it works:
  Create the SliverList widget. Then it needs to be given a delegate for building its children. You can either give it a SliverChildListDelegate or a SliverChildBuilderDelegate. The SliverChildBuilderDelegate builds the elements of the list lazily whereas the SliverChildListDelegate builds them in one shot.
  
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/sliver_list_example.dart)

      import 'package:flutter/material.dart';

      class SliverListExample extends StatelessWidget {
        const SliverListExample({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    for (int i = 0; i < 10; i++)
                      const ListTile(
                        tileColor: Colors.black,
                        textColor: Colors.white,
                        title: Text(
                          "SliverChildListDelegate",
                        ),
                      ),
                  ]),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return const ListTile(
                        tileColor: Colors.white,
                        textColor: Colors.black,
                        title: Text(
                          "SliverChildBuilderDelegate",
                        ),
                      );
                    },
                    childCount: 10,
                  ),
                )
              ],
            ),
          );
        }
      }
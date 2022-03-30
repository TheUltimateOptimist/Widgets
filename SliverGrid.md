# SliverGrid

- ## What it does:
  A SliverGrid is comparable to the normal Grid but is a sliver and can therefore be added to the list of slivers of a CustomScrollView. As a result the SliverGrid shines when you want to achieve custom scrolling like for example combining a List with a Grid in one ScrollView.

- ## How it works:
  Create the SliverGrid widget. Then it needs to be given a delegate for building its children. You can either give it a SliverChildListDelegate or a SliverChildBuilderDelegate. The SliverChildBuilderDelegate builds the elements of the list lazily whereas the SliverChildListDelegate builds them in one shot. Moreover the SliverGrid requires a gridDelegate. You can use the SliverGridDelegateWithFixedCrossAxisCount or the SliverGridDelegateWithMaxCrossAxisExtent. The first one needs to be given a crossAxisCount specifying between how many children the crossAxisSpace will be divided upon where as the second one needs to be given a maxCrossAxisExtent specifying how much space should be occupied by each cild at max along the crossAxis. Both delegates determine the space each child should occupy along the main axis using the given childAspectRatio which defaults to 1.0.

- ## Additional Constructors:
  - SliverGrid.count()   
    The SliverGrid.count() constructor needs to be given a crossAxisCount and a list of children. It has the same affect as giving the normal SliverGrid a SliverChildListDelegate and a SliverGridDelegateWithFixedCrossAixsCount.
  - SliverGrid.extent()   
    The SliverGrid.extent() constructor needs to be given a maxCrossAxisExtent and a list of children. It has the same effect as giving the normal SliverGrid a SliverChildListDelegate and a SliverGridDelegateWithMaxCrossAxisExtent
  
- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/sliver_list_example.dart)

      import 'package:flutter/material.dart';

      class SliverGridExample extends StatelessWidget {
        const SliverGridExample({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Scaffold(backgroundColor: Colors.black,
            body: CustomScrollView(
              slivers: [
                SliverGrid(
                  delegate: SliverChildListDelegate(
                    [
                      for (int i = 0; i < 12; i++)
                        Container(
                          color: Colors.green,
                          child: const Text(
                            "SliverChildListDelegate",
                          ),
                        ),
                    ],
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Container(
                        color: Colors.white,
                        child: const Text(
                          "SliverChildBuilderDelegate",
                        ),
                      );
                    },
                    childCount: 12,
                  ),
                  gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: MediaQuery.of(context).size.width/4,
                  ),
                ),
                SliverGrid.count(
                  crossAxisCount: 4,
                  children: [
                    for (int i = 0; i < 12; i++)
                      Container(
                        color: Colors.yellow,
                        child: const Text(
                          ".count constructor",
                        ),
                      ),
                  ],
                ),
                SliverGrid.extent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width/4,
                  children: [
                    for (int i = 0; i < 12; i++)
                      Container(
                        color: Colors.red,
                        child: const Text(
                          ".extent constructor",
                        ),
                      ),
                  ],
                )
              ],
            ),
          );
        }
      }

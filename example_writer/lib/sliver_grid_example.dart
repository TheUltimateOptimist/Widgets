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

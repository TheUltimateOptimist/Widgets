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

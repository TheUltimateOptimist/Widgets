# Hero

- ## What it does:
  It marks its child as a being a candidate for hero animations

- ## What is a hero animation:
  When a `PageRoute` is pushed or popped with the `Navigator`, the entire screen's content is replaced. If there's a common visual feature on the new screen then it can be helpful for orienting the user to move the feature from one page to the other during transition. Such an animation is called hero animation.

- ## How it works:
  Wrap the widget you want to perform a hero animation on both the starting and the destination screen with the Hero widget. Added to that you need to give both the same `tag`. When transitioning a hero animation will be triggered of each pair of hero-wrapped widgets with the same `tag`.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/hero_example.dart)
  
  ```
  import 'package:flutter/material.dart';

  class HeroExample extends StatelessWidget {
    const HeroExample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hero Example",
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              ListTile(
                leading: Hero(
                  tag: 'hero-rectangle',
                  child: _blueRectangle(
                    const Size(
                      50,
                      50,
                    ),
                  ),
                ),
                onTap: () => _gotoDetailsPage(context),
                title: const Text(
                  'Tap on the icon to view hero animation transition.',
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  Widget _blueRectangle(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.blue,
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(
            title: const Text('second Page'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'hero-rectangle',
                  child: _blueRectangle(const Size(200, 200)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  ```

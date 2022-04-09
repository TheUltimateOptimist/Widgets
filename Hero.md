# Hero

- ## What it does:
  It marks its child as a being a candidate for hero animations

- ## What is a hero animation:
  When a `PageRoute` is pushed or popped with the `Navigator`, the entire screen's content is replaced. If there's a common visual feature on the new screen then it can be helpful for orienting the user to move the feature from one page to the other during transition. Such an animation is called hero animation.

- ## How it works:
  Wrap the widget you want to perform a hero animation on both the starting and the destination screen with the Hero widget. Added to that you need to give both the same `tag`. When transitioning a hero animation will be triggered of each pair of hero-wrapped widgets with the same `tag`.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/hero_example.dart)

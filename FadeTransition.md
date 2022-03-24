# Fade Transition

- ## What it does:
  A FadeTransition lets you fade a widget in and out

- ## How it works:
  Wrap the widget you want to be faded in or out in FadeTransition widget. Specifiy its opacity by giving it an animation object. You can control the fading in and out of the widget using an animation controller. For more details take a look at the example code.
  
- ## Example Code: 
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/fade_transition_example.dart)

      import 'package:flutter/material.dart';

      class FadeTransitionExample extends StatefulWidget {
        const FadeTransitionExample({Key? key}) : super(key: key);

        @override
        State<FadeTransitionExample> createState() => _FadeTransitionExampleState();
      }

      class _FadeTransitionExampleState extends State<FadeTransitionExample>
          with SingleTickerProviderStateMixin {
        late AnimationController _controller;
        late Animation<double> _animation;

        @override
        void initState() {
          _controller = AnimationController(
            vsync: this,
            duration: const Duration(
              seconds: 2,
            ),
          );
          _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
          super.initState();
        }

        @override
        void dispose() {
          _controller.dispose();
          super.dispose();
        }

        @override
        Widget build(BuildContext context) {
          _controller.forward();
          return Scaffold(
            body: Center(
              child: FadeTransition(
                child: GestureDetector(onTap: (){
                  if(_controller.value.round() == 0){
                    _controller.forward();
                  }
                  else _controller.animateBack(0.0);
                },
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                  ),
                ),
                opacity: _animation,
              ),
            ),
          );
        }
      }
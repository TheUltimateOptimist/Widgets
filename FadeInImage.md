# FadeInImage

- ## What it does:
  A FadeInImage widget lets you show a PlaceHoderImage while the actual image is being loaded. It also lets you control the animation used when switching between these two images.

- ## How it works:
  Create a FadeInImage widget using either the FadeInImage.assetNetwork() or the FadeInImage.memoryNetwork() constructor. Both constructors need a url as their image attribute. This url specifys from where the final image should be laoded. The FadeInImage.assetNetwork() constructor also needs the assetPath of the placeholder image as its placeholder attribute whereas the FadeInImage.memoryNetwork() constructor needs a Unit8List representation of the placeholder image to display. Added to that both constructors let you specify attributes like fadeInDuration, fadeOutDuration, fadeInCurve, fadeOutCurve.

- ## Nice to know:
  You can also use a transparent image as placeholder using the transparent_image package. Simply use the FadeInImage.memoryNetwork() constructor and set the placeholder attribute to kTransparentImage.
  
- ## Example Code: 
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/fade_in_image_example.dart)

      import 'dart:convert';

      import 'package:flutter/material.dart';
      import 'package:transparent_image/transparent_image.dart';

      class FadeInImageExample extends StatelessWidget {
        FadeInImageExample({Key? key}) : super(key: key);

        final imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwJoM4KdnvUgMXwFKHCJfOkXil3wJZrgKykRzFyrNXXF_YAy8RxgPjgjvN9mDhknbq1B4&usqp=CAU";
        final assetPath = "assets/images/placeholder.jpg";
        final memoryImageBytes = base64Decode("base64RepresentationOfTheImage");
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: Column(
              children: [
                FadeInImage.assetNetwork(
                  fadeInDuration: const Duration(
                    seconds: 5,
                  ),
                  fadeOutDuration: const Duration(
                    seconds: 6,
                  ),
                  fadeInCurve: Curves.bounceIn,
                  fadeOutCurve: Curves.easeIn,
                  placeholder: assetPath,
                  image: imageUrl,
                ),
                FadeInImage.memoryNetwork(
                  fadeInDuration: const Duration(
                    seconds: 2,
                  ),
                  fadeOutDuration: const Duration(
                    seconds: 3,
                  ),
                  fadeInCurve: Curves.easeInOutSine,
                  fadeOutCurve: Curves.elasticIn,
                  placeholder: memoryImageBytes,
                  image: imageUrl,
                ),
                FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: imageUrl,
                ),
              ],
            ),
          );
        }
      }
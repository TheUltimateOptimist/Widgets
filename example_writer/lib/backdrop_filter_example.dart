import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';

class FilterBox extends StatelessWidget {
  const FilterBox({required this.filter, Key? key}) : super(key: key);

  final ImageFilter filter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          Center(
            child: Container(
              color: Colors.black,
              height: 100,
              width: 100,
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: filter,
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackdropFilterExample extends StatelessWidget {
  const BackdropFilterExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Float64List matrix = Float64List(16);
    Matrix4.translationValues(10, 10, 0).copyIntoArray(matrix);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterBox(
              filter: ImageFilter.blur(),
            ),
            FilterBox(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            ),
            FilterBox(
              filter: ImageFilter.compose(
                outer: ImageFilter.blur(),
                inner: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              ),
            ),
            Row(
              children: [
                ClipRect(
                  child: SizedBox(
                    height: 130,
                    width: 130,
                    child: Center(
                      child: Container(
                        color: Colors.black,
                        height: 100,
                        width: 100,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(
                            color: Colors.black.withOpacity(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                FilterBox(
                  filter: ImageFilter.matrix(matrix),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

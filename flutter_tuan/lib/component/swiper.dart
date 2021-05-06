import 'package:flutter/material.dart';

class CircleRectSwiper extends StatefulWidget {
  @override
  _CircleRectSwiperState createState() => _CircleRectSwiperState();
}

class _CircleRectSwiperState extends State<CircleRectSwiper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tuan/widget/tile_recommend.dart';
import 'package:flutter_tuan/widget/view_recently.dart';

class MomentRecommendedPage extends StatefulWidget {
  @override
  _MomentRecommendedPageState createState() => _MomentRecommendedPageState();
}

class _MomentRecommendedPageState extends State<MomentRecommendedPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:Padding(child: ListView(
        children: [
          ViewRecently(),
          TileRecommend(),
          TileRecommend(),
          TileRecommend(),
          TileRecommend()
        ],
      ),padding: EdgeInsets.fromLTRB(18, 8, 0, 0),
    ));
  }
}

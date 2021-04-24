import 'package:flutter/material.dart';
import 'package:flutter_tuan/pages/categoryPage.dart';
import 'package:flutter_tuan/widget/ExpandedText.dart';
import 'package:flutter_tuan/widget/tile_recommend.dart';
import 'package:flutter_tuan/widget/tile_subscrib.dart';
import 'package:flutter_tuan/widget/view_recently.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return ViewRecently();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/forum_hot.dart';
import 'package:flutter_tuan/component/forum_item.dart';
import 'package:flutter_tuan/component/forum_subscrib.dart';


class ForumPage extends StatefulWidget {
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
          children: [ForumSubscrib(),ForumHot(),ForumItem(),ForumItem(),ForumItem(),ForumItem(),ForumItem(),ForumItem(),ForumItem(),ForumItem(),ForumItem()],
        ),
    );
  }
}

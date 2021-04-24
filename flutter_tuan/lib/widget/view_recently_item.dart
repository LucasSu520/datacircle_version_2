import 'package:flutter/material.dart';

class ViewRecentlyItem extends StatefulWidget {
  @override
  _ViewRecentlyItemState createState() => _ViewRecentlyItemState();
}

class _ViewRecentlyItemState extends State<ViewRecentlyItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),
              image: DecorationImage(
                  image: AssetImage('assets/duoduo.jpg'), fit: BoxFit.cover)),
        ),
        Text('多多'),
        Text('测试版'),
      ],
    );
  }
}

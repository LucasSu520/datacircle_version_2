import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/view_recently_item.dart';

class ViewRecently extends StatefulWidget {
  @override
  _ViewRecentlyState createState() => _ViewRecentlyState();
}

class _ViewRecentlyState extends State<ViewRecently> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                '最近浏览',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),
              ),
            ),
            Expanded(
              child: Text(
                '管理',
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.lightGreen, fontSize: 13),
              ),
            ),SizedBox(width: 18,),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 120,
          child: ListView.builder(
            itemCount: 12,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.fromLTRB(0, 4, 10, 4),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 6),
                child: ViewRecentlyItem(),
              );
            },
          ),
        )
      ],
    );
  }
}

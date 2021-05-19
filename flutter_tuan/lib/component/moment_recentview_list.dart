import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/moment_recentview_item.dart';
import 'package:flutter_tuan/model/moment_recentview_model.dart';

class MomentRecentViewList extends StatefulWidget {
  MomentRecentViewList({this.list});
  final MomentRecentViewListModel list;
  @override
  _MomentRecentViewListState createState() => _MomentRecentViewListState();
}

class _MomentRecentViewListState extends State<MomentRecentViewList> {
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
            itemCount: widget.list.data.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.fromLTRB(0, 4, 10, 4),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 6),
                child: MomentRecentViewItem(item: widget.list.data[index],),
              );
            },
          ),
        )
      ],
    );
  }
}

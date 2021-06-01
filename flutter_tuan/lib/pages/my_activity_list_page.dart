import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/all_activity_detail.dart';
import 'package:flutter_tuan/model/my_activity_model.dart';

class MyActivityListPage extends StatefulWidget {
  const MyActivityListPage({this.name,this.list});
  final String name;
  final MyActivityListModel list;
  @override
  _MyActivityListPageState createState() => _MyActivityListPageState();
}

class _MyActivityListPageState extends State<MyActivityListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(itemCount: widget.list.data.length,
        itemBuilder: (BuildContext context, int index) {
          switch (widget.name){
            case '全部活动':
              return AllActivityDetail(widget.list.data[index]);
            case '已报名':
              return AllActivityDetail(widget.list.data[index]);
            case '待评价':
              return AllActivityDetail(widget.list.data[index]);
            default :
              return AllActivityDetail(widget.list.data[index]);
          }
        },
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}

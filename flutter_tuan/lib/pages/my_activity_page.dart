import 'package:flutter/material.dart';
import 'package:flutter_tuan/data/my_activity_data.dart';
import 'package:flutter_tuan/model/my_activity_model.dart';
import 'package:flutter_tuan/pages/my_activity_list_page.dart';

class MyActivityPage extends StatefulWidget {
  const MyActivityPage({this.name});
  final String name;

  @override
  _MyActivityPageState createState() => _MyActivityPageState();
}

class _MyActivityPageState extends State<MyActivityPage> {
  MyActivityListModel list;

  @override
  void initState() {
    super.initState();
    list = getMyActivityData(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return MyActivityListPage(
      name: widget.name,
      list: this.list,
    );
  }

  // MyActivityListModel getMyActivityListModel() {
  //    return ;
  // }
}

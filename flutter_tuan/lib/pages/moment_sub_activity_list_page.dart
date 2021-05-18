import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/moment_sub_activity_detail.dart';
import 'package:flutter_tuan/model/moment_sub_activity_model.dart';

class MomentSubActivityListPage extends StatefulWidget {
  MomentSubActivityListPage({this.getNextPage, this.list});
  final VoidCallback getNextPage;
  final MomentSubActivityListModel list;
  static final ScrollController MomentController=ScrollController();

  @override
  _MomentSubActivityListPageState createState() =>
      _MomentSubActivityListPageState();
}

class _MomentSubActivityListPageState extends State<MomentSubActivityListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(controller: MomentSubActivityListPage.MomentController,
      itemBuilder: (BuildContext context, int index) {
        if (index + 2 == widget.list.data.length) {
          widget.getNextPage();
        }
        return Container(
          child: MomentSubActivityDetail(item: widget.list.data[index]),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
        );
      },
      itemCount: widget.list.data.length,
    );
  }

  @override
  void initState() {
    super.initState();
  }
}

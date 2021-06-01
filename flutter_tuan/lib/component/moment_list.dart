import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/moment_item_detail.dart';
import 'package:flutter_tuan/model/moment_model.dart';

class MomentList extends StatefulWidget {
  static final ScrollController momentScrollController = new ScrollController();

  MomentList({this.getNextPage, this.list, this.physics});
  final VoidCallback getNextPage;
  final MomentListModel list;
  final ScrollPhysics physics;

  @override
  _MomentListState createState() => _MomentListState();
}

class _MomentListState extends State<MomentList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: MomentItemDetail(item: widget.list.data[index]),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
        );
      },
      itemCount: widget.list.data.length,
      controller: MomentList.momentScrollController,
    );
  }

  @override
  void dispose() {
    MomentList.momentScrollController.removeListener(() {});
    super.dispose();
  }

  @override
  void initState() {
    MomentList.momentScrollController.addListener(() {
      print(MomentList.momentScrollController.position.pixels);
      if (MomentList.momentScrollController.position.extentAfter < 3)
        widget.getNextPage();
    });
    super.initState();
  }
}

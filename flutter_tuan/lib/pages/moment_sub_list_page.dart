import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/moment_item_detail.dart';
import 'package:flutter_tuan/model/moment_model.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class MomentSubListPage extends StatefulWidget {
  MomentSubListPage({this.getNextPage, this.list,this.physics});
  final VoidCallback getNextPage;
  final MomentListModel list;
  final ScrollPhysics physics;

  @override
  _MomentSubListPageState createState() =>
      _MomentSubListPageState();
}

class _MomentSubListPageState extends State<MomentSubListPage> {
  ScrollController controller;


  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(shrinkWrap: true,
      // controller: MomentSubListPage.MomentController,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: MomentItemDetail(item: widget.list.data[index]),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
        );
      },
      itemCount: widget.list.data.length,
        controller: controller,
    );



  }


  @override
  void dispose() {
    controller.removeListener(() { });
    super.dispose();
  }

  @override
  void initState() {
    controller=new ScrollController()..addListener(() {
      print(controller.position.pixels);
      if(controller.position.extentAfter<3)
      widget.getNextPage();});
    super.initState();
  }
}

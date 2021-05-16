import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/tuan_activity_detail.dart';
import 'package:flutter_tuan/model/tuan_activity_model.dart';

import '../app_theme.dart';


class TuanActivityListPage extends StatefulWidget {
  static final ScrollController tuanActivityScrollController=new ScrollController();

  const TuanActivityListPage(
      {this.activityListModel, this.animationController, this.getNextPage,});

  final TuanActivityListModel activityListModel;
  final AnimationController animationController;
  final VoidCallback getNextPage;
  @override
  _TuanActivityListPageState createState() => _TuanActivityListPageState();
}


  class _TuanActivityListPageState extends State<TuanActivityListPage> {

  @override
  void initState() {
    super.initState();
  } // finish the tuan activity list page
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme
          .buildLightTheme()
          .backgroundColor,
      child: ListView.builder(
        itemCount: widget.activityListModel.data.length,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 6),
        controller
        :TuanActivityListPage.tuanActivityScrollController,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          if (index + 1 == widget.activityListModel.data.length) {
            widget.getNextPage();
          }
          return TuanActivityDetail(
            callback: () {},
            activity: widget.activityListModel.data[index],
          );
        },
      ),
    );
  }
}

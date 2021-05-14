import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/tuan_activity_detail.dart';
import 'package:flutter_tuan/model/tuan_activity_model.dart';

import '../app_theme.dart';

class TuanActivityListPage extends StatelessWidget {
  const TuanActivityListPage(
      {this.activityListModel, this.animationController, this.getNextPage});

  final TuanActivityListModel activityListModel;
  final AnimationController animationController;
  final VoidCallback getNextPage;

  // finish the tuan activity list page
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.buildLightTheme().backgroundColor,
      child: ListView.builder(
        itemCount: this.activityListModel.data.length,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.only(top: 6),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          if(index+1==this.activityListModel.data.length){
            getNextPage();
          }
          return TuanActivityDetail(
            callback: () {},
            activity: this.activityListModel.data[index],
          );
        },
      ),
    );
  }
}

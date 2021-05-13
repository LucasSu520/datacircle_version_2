import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/tuan_activity_detail.dart';
import 'package:flutter_tuan/model/activity.dart';
import 'package:flutter_tuan/model/activity_list.dart';
import 'package:flutter_tuan/model/activity_list_view.dart';

import '../app_theme.dart';

class UpComingPage extends StatefulWidget {
  @override
  _UpComingPageState createState() => _UpComingPageState();
}

class _UpComingPageState extends State<UpComingPage> with TickerProviderStateMixin,AutomaticKeepAliveClientMixin{
  List<Activity> activityList;
  AnimationController animationController;


  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    activityList=ActivityList.upcomingPageActivityList;
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.buildLightTheme().backgroundColor,
      child: ListView.builder(
        itemCount: activityList.length,
        padding: EdgeInsets.only(top: 8),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          final int count = activityList.length > 10 ? 10 : activityList.length;
          final Animation<double> animation=Tween<double>(begin:0.0,end:1.0).animate(CurvedAnimation(parent: animationController, curve: Interval((1 / count)*index,1.0,curve: Curves.fastOutSlowIn)));
          animationController.forward();
          return TuanActivityDetail(
            callback: (){},
            activity: activityList[index],
            animation: animation,
            animationController: animationController,
          );
        },
      ),
    );
  }
}

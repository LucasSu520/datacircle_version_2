import 'package:flutter/material.dart';
import 'package:flutter_tuan/app_theme.dart';
import 'package:flutter_tuan/model/activity.dart';
import 'package:flutter_tuan/model/activity_list.dart';
import 'package:flutter_tuan/model/activity_list_view.dart';

class RecommendedPage extends StatefulWidget {
  @override
  _RecommendedPageState createState() => _RecommendedPageState();
}

class _RecommendedPageState extends State<RecommendedPage> with TickerProviderStateMixin {
  List<Activity> activityList;
  AnimationController animationController;

  @override
  void initState() {
    activityList = ActivityList.activityList;
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }


  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
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
         return ActivityListView(
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

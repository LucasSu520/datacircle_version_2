import 'package:flutter/material.dart';
import 'package:flutter_tuan/app_theme.dart';
import 'package:flutter_tuan/component/tuan_activity_detail.dart';
import 'package:flutter_tuan/model/activity.dart';
import 'package:flutter_tuan/model/activity_list.dart';
import 'package:flutter_tuan/model/tuan_activity_model.dart';
import 'package:flutter_tuan/service/tuan_activity_service.dart';

class TuanActivityPage extends StatefulWidget {
  const TuanActivityPage({this.name});
  final String name;
  @override
  _TuanActivityPageState createState() => _TuanActivityPageState();
}

class _TuanActivityPageState extends State<TuanActivityPage>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  List<Activity> activityList;
  AnimationController animationController;
  TuanActivityListModel _activityListModel = TuanActivityListModel([]);

  @override
  bool get wantKeepAlive => true;

  int page = 0;
  void getTuanActivtyList(String name) {
    var data = getTuanActivityResult(page: page++, name: name);
    TuanActivityListModel list = TuanActivityListModel.fromJson(data);

    setState(() {
      list.data.addAll(list.data);
    });
  }
  //give the tuan activity list model to the  activity list page

  @override
  void initState() {
    activityList = ActivityList.recommendedActivityList;
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
    super.build(context);
    return
      Container(
      color: AppTheme.buildLightTheme().backgroundColor,
      child: ListView.builder(
        itemCount: activityList.length,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.only(top: 6),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          final int count = activityList.length > 10 ? 10 : activityList.length;
          final Animation<double> animation =
              Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                  parent: animationController,
                  curve: Interval((1 / count) * index, 1.0,
                      curve: Curves.fastOutSlowIn)));
          animationController.forward();
          return TuanActivityDetail(
            callback: () {},
            activity: activityList[index],
            animation: animation,
            animationController: animationController,
          );
        },
      ),
    );
  }
}

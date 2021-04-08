import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/activity_list.dart';
import 'package:flutter_tuan/widget/roundUnderlineTabIndicator.dart';

class TuanPage extends StatefulWidget {
  @override
  _TuanPageState createState() => _TuanPageState();
}

class _TuanPageState extends State<TuanPage> with TickerProviderStateMixin {
  List<ActivityListData> activityList = ActivityListData.activityList;
  AnimationController animationController;
  List<Tab> _tabBarList;
  List<Widget> _tabBarViewList;

  TabController mController;

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TabBar(
                  indicatorPadding: EdgeInsets.only(left: 10),
                  tabs: this._tabBarList,
                  controller: mController,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 23.0),
                  indicatorColor: Colors.lightBlue,
                  indicator: RoundUnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 3.5, color: Colors.lightBlue)),
                  labelStyle: TextStyle(fontSize: 18.0),
                  labelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(fontSize: 14.0),
                  unselectedLabelColor: Colors.grey,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Container(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/search.png',
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(10.0)),boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ]),
                  )),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: this.mController,
              children: this._tabBarViewList,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    this.mController =
        new TabController(initialIndex: 0, length: 6, vsync: this);
    this._tabBarList = [
      Tab(
        text: '推荐',
      ),
      Tab(
        text: '即将开始',
      ),
      Tab(
        text: '排名',
      ),
      Tab(
        text: '推荐',
      ),
      Tab(
        text: '即将开始',
      ),
      Tab(
        text: '排名',
      ),
    ];
    this._tabBarViewList = [
      Center(
        child: Text('推荐'),
      ),
      Center(
        child: Text("即将开始"),
      ),
      Center(
        child: Text('排名'),
      ),
      Center(
        child: Text('推荐'),
      ),
      Center(
        child: Text("即将开始"),
      ),
      Center(
        child: Text('排名'),
      ),
    ];
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tuan/model/activity_list.dart';
import 'package:flutter_tuan/activity_app_theme.dart';

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
              TabBar(
                tabs: this._tabBarList,
                controller: mController,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black87,
              ),
              Expanded(
                child:
                     TabBarView(
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
        new TabController(initialIndex: 0, length: 3, vsync: this);
    this._tabBarList = [
      Tab(
        text: '推荐',
      ),
      Tab(
        text: '即将开始',
      ),
      Tab(
        text: '排名',
      )
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
      )
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

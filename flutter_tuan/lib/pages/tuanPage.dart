import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/activity_list.dart';
import 'package:flutter_tuan/widget/roundUnderlineTabIndicator.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

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
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: this._tabBarList,
                  controller: mController,
                  indicatorColor: Colors.lightBlue,
                  indicator: RoundUnderlineTabIndicator(
                    borderSide: BorderSide(width: 2,color: Colors.lightBlue)
                  ),
                  labelStyle: TextStyle(fontSize: 19.0),
                  labelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(fontSize: 15.0),
                  unselectedLabelColor: Colors.grey,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 15.0,
                          spreadRadius: 15.0)
                    ]),
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      child: Image(
                        image: AssetImage('assets/search.png'),
                        width: 16,
                        height: 16,
                      ),
                      elevation: 5.0,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: GestureDetector(
                    onTap: () {},
                    child: ClipOval(
                      child: Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.green,
                              spreadRadius: 20.0,
                              blurRadius: 20),
                        ]),
                        child: Image(
                          image: AssetImage('assets/wolfKill.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              )
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
    ];
    this.mController = new TabController(
        initialIndex: 0, length: this._tabBarList.length, vsync: this);
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

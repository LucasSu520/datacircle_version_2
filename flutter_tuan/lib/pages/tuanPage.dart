import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/widget/roundUnderlineTabIndicator.dart';
import 'package:flutter_tuan/pages/recommendedPage.dart';
import 'package:flutter_tuan/pages/UpComingPage.dart';

import 'RankPage.dart';

class TuanPage extends StatefulWidget {
  @override
  _TuanPageState createState() => _TuanPageState();
}

class _TuanPageState extends State<TuanPage> with TickerProviderStateMixin {
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
                  // isScrollable: true,
                  labelPadding: EdgeInsets.zero,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: this._tabBarList,
                  controller: mController,
                  indicatorColor: Colors.lightBlue,
                  indicator: RoundUnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 2, color: Colors.lightBlue)),
                  labelStyle: TextStyle(fontSize: 20.0),
                  labelColor: Colors.black,
                  // isScrollable: true,
                  unselectedLabelStyle: TextStyle(fontSize: 15.0),
                  unselectedLabelColor: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 3),
                child: Container(
                  height: 38,
                  width: 38,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 15.0,
                            spreadRadius: 15.0),
                      ],
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(10.0))),
                  child: FloatingActionButton(
                    onPressed: () {
                      print('多多');
                    },
                    backgroundColor: Colors.white,
                    child: Image(
                      image: AssetImage('assets/search.png'),
                      width: 20,
                      height: 20,
                    ),
                    elevation: 5.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      print('this is clipOval');
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      color: Colors.transparent,
                      height: 48,
                      width: 48,
                      child: ClipOval(
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
      RecommendedPage(),
      UpComingPage(),
      RankPage(),
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
    super.dispose();
  }
}

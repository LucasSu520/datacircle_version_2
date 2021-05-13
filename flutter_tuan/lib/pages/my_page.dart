import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/roundUnderlineTabIndicator.dart';
import 'package:flutter_tuan/constants/radius_size_constant.dart';

import '../main.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with TickerProviderStateMixin {
  List<Tab> _tabBarList;
  TabController mController;

  @override
  void initState() {
    this._tabBarList = [
      Tab(text: '全部活动'),
      Tab(
        text: '已报名',
      ),
      Tab(
        text: '待评价',
      ),
      Tab(
        text: '已预约',
      )
    ];
    this.mController =
        new TabController(length: this._tabBarList.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(19, 8, 19, 0),
            child: Row(children: [
              Expanded(
                child: Text(
                  '我的活动',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Icon(
                Icons.settings,
                size: 24,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.headset_mic_rounded,
                size: 24,
              )
            ]),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              18,
              8,
              18,
              0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    MyApp.scaffoldKey.currentState.openDrawer();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      radius: RadiusSizeConstants.circleAvatarSize,
                      backgroundImage: AssetImage('images/food.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Christian多多',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: Container(
                            width: 90,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Text(
                              '玩耍度:800',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Container(
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Text(
                              '成长值',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 18, 0),
              child: Container(
                height: 35,
                alignment: Alignment.centerLeft,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: this._tabBarList,
                  controller: mController,
                  indicatorColor: Colors.lightBlue,
                  indicator: RoundUnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 2, color: Colors.lightBlue)),
                  labelStyle: TextStyle(fontSize: 20.0),
                  labelColor: Colors.black,
                  isScrollable: true,
                  unselectedLabelStyle: TextStyle(fontSize: 15.0),
                  unselectedLabelColor: Colors.grey,
                ),
              )),
          Expanded(
            child: TabBarView(
              children: [
                Center(
                  child: Text('多多'),
                ),
                Center(
                  child: Text('多多'),
                ),
                Center(
                  child: Text('多多'),
                ),
                Center(
                  child: Text('多多'),
                )
              ],
              controller: this.mController,
            ),
          )
        ],
      ),
    );
  }
}

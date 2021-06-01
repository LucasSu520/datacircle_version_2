import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/custom_physics.dart';
import 'package:flutter_tuan/component/roundUnderlineTabIndicator.dart';
import 'package:flutter_tuan/component/scale_tabbar.dart';
import 'package:flutter_tuan/constants/radius_size_constant.dart';
import '../main.dart';
import 'my_activity_page.dart';

const List<String> tabBarNameList = ['全部活动', '已报名', '待评价'];

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with TickerProviderStateMixin {
  List<Tab> _tabBarList;
  TabController mController;
  List<Widget> _tabViewList;

  @override
  void initState() {
    this._tabBarList = <Tab>[];
    this._tabViewList=<Widget>[];
    tabBarNameList.forEach((element) {
      this._tabBarList.add(Tab(
            text: element,
          ));
      this._tabViewList.add(MyActivityPage(name: element,));
    });
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
            padding: EdgeInsets.only(
              top: 13,
              right: 18,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(1, 0),
                  child: Icon(Icons.headset_mic_rounded),
                ),
                Align(
                  alignment: Alignment(0.75, 0),
                  child: Icon(Icons.settings),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              18,
              0,
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
                      radius: RadiusSizeConstants.circleAvatarSize * 1.5,
                      backgroundImage: AssetImage('images/duoduo.jpg'),
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
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Container(
              height: 12,
              color: Colors.grey.withOpacity(0.1),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                height: 70,
                child: Stack(
                  children: [
                    Image.asset(
                      'images/grid-nav-items-flight.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      alignment: AlignmentDirectional.bottomStart,
                    ),
                    Align(
                      child: Container(
                        width: 140,
                        height: 30,
                        child: Text(
                          '邀请好友',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      alignment: Alignment(-0.3, -0.7),
                    ),
                    Align(
                      child: Image.asset(
                        'images/rabbit2.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                      alignment: Alignment(-0.9, 0),
                    ),
                    Align(
                      child: Container(
                        width: 140,
                        height: 30,
                        child: Text(
                          '邀请好友一起玩团团',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black38,
                              fontWeight: FontWeight.w600),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      alignment: Alignment(-0.3, 0.7),
                    ),
                    Align(
                        child: Container(
                      height: 30,
                      alignment: Alignment.center,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      child: Text(
                        '立即邀请',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),alignment: Alignment(0.5,0),)
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              height: 12,
              color: Colors.grey.withOpacity(0.1),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 18, 0),
              child: Container(
                height: 35,
                alignment: Alignment.centerLeft,
                child: ScaleTabBar(
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
              physics: CustomPhysics(),
              children:this._tabViewList,
              controller: this.mController,
            ),
          )
        ],
      ),
    );
  }
}

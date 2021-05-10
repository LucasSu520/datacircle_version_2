import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_tuan/app_theme.dart';
import 'package:flutter_tuan/component/slideTabbar.dart';
import 'package:flutter_tuan/constants/constant.dart';
import 'package:flutter_tuan/main.dart';
import 'package:flutter_tuan/pages/recommendedPage.dart';
import 'package:flutter_tuan/pages/upcomingPage.dart';
import 'package:flutter_tuan/component/roundUnderlineTabIndicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'RankPage.dart';

class TuanPage extends StatefulWidget {
  @override
  _TuanPageState createState() => _TuanPageState();
}

class _TuanPageState extends State<TuanPage> with TickerProviderStateMixin {
  List<Tab> _tabBarList;
  List<Widget> _tabBarViewList;
  TabController mController;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.buildLightTheme(),
      child: Material(
        // color: AppTheme.white,
        child: Column(
          children: [
            Padding(
              padding: kDefaultTabBarPadding,
              child: Row(
                children: [
                  Expanded(
                    child: CustomTabBar(
                      physics: CustomPhysics(),
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: this._tabBarList,
                      controller: mController,
                      indicator: RoundUnderlineTabIndicator(),
                      labelStyle:TextStyle(fontSize: 18.0) ,
                      unselectedLabelStyle: TextStyle(fontSize: 14.0),
                      // isScrollable: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 15.0,
                                spreadRadius: 15.0),
                          ],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0))),
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        child: Icon(CupertinoIcons.search),
                        // child: Image(
                        //   image: AssetImage('images/search.png'),
                        //   width: 20,
                        //   height: 20,
                        // ),
                        elevation: 5.0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      MyApp.scaffoldKey.currentState.openDrawer();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: CircleAvatar(
                        radius: RadiusSizeConstants.circleAvatarSize,
                        backgroundImage: AssetImage('images/duoduo.jpg'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: CustomPhysics(),
                controller: this.mController,
                children: this._tabBarViewList,
              ),
            ),
          ],
        ),
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

class CustomPhysics extends ScrollPhysics {
  const CustomPhysics({ScrollPhysics parent}) : super(parent: parent);

  @override
  CustomPhysics applyTo(ScrollPhysics ancestor) {
    return CustomPhysics(parent: buildParent(ancestor));
  }

  @override
  SpringDescription get spring {
    return SpringDescription(mass: 80, stiffness: 150, damping: 0.8);
  }
}

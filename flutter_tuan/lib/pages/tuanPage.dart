import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_tuan/app_theme.dart';
import 'package:flutter_tuan/constants/constant.dart';
import 'package:flutter_tuan/main.dart';
import 'package:flutter_tuan/pages/recommendedPage.dart';
import 'package:flutter_tuan/pages/upcomingPage.dart';
import 'package:flutter_tuan/component/roundUnderlineTabIndicator.dart';
import 'RankPage.dart';

class TuanPage extends StatefulWidget {
  @override
  _TuanPageState createState() => _TuanPageState();
}

class _TuanPageState extends State<TuanPage> with TickerProviderStateMixin {
  List<Tab> _tabBarList;
  List<Widget> _tabBarViewList;
  TabController mController;
  TabBar mTabBar;

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: AppTheme.white,
      child: Column(
        children: [
          Padding(
            padding: kDefaultTabBarPadding,
            child: Row(
              children: [
                Expanded(
                  child: TabBar(
                    physics: CustomPhysics(),
                    isScrollable: true,
                    tabs: this._tabBarList,
                    indicator: RoundUnderlineTabIndicator(
                        borderSide: BorderSide(
                            width: 2.5, color: Theme.of(context).accentColor)),
                    controller: mController,
                    labelStyle: Theme.of(context).tabBarTheme.labelStyle,
                    unselectedLabelStyle:
                        Theme.of(context).tabBarTheme.unselectedLabelStyle,
                    // isScrollable: true,
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(5),
                  child: FloatingActionButton(
                    onPressed: () {
                      //TODO add the click navigator to the search page
                    },
                    backgroundColor: Colors.white,
                    child: Icon(CupertinoIcons.search),
                    elevation: 5.0,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    MyApp.scaffoldKey.currentState.openDrawer();
                  },
                  child: CircleAvatar(
                    radius: RadiusSizeConstants.circleAvatarSize,
                    backgroundImage: AssetImage('images/duoduo.jpg'),
                  ),
                ),
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
    return SpringDescription(mass: 90, stiffness: 150, damping: 0.8);
  }
}

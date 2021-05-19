import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/animation_float_button.dart';
import 'package:flutter_tuan/component/custom_physics.dart';
import 'package:flutter_tuan/constants/constant.dart';
import 'package:flutter_tuan/constants/radius_size_constant.dart';
import 'package:flutter_tuan/pages/moment_forum_page.dart';
import 'package:flutter_tuan/pages/moment_recom_page.dart';
import 'package:flutter_tuan/component/roundUnderlineTabIndicator.dart';


import '../main.dart';
import 'moment_sub_page.dart';

const List<String> tabBarName = ['关注', '推荐', '热榜'];

class MomentsPage extends StatefulWidget {
  @override
  _MomentsPageState createState() => _MomentsPageState();
}

class _MomentsPageState extends State<MomentsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Tab> _tabs = [];
  List<Widget> _tabViewList;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);

    tabBarName.forEach((element) {
      if (element == '关注') {
        this._tabs.add(
              Tab(
                  child: (Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 6),
                width: 50,
                child: Stack(children: [
                  Positioned(
                    child: Text('关注'),
                    left: 0,
                    top: 14,
                  ),
                  Positioned(
                    child: Icon(
                      Icons.arrow_drop_down,
                      size: 14.0,
                    ),
                    right: 0,
                    top: 18,
                  ),
                ]),
              ))),
            );
      } else {
        this._tabs.add(Tab(text: element));
      }
    });

    _tabViewList = [
      MomentSubActivityPage(),
      MomentRecommendedPage(),
      ForumPage(),
    ];
    _tabController.addListener(() {
      setState(() {
        if (_tabController.index != 0) {
          _tabs[0] = Tab(
              child: (Container(
                  padding: EdgeInsets.only(left: 6),
                  width: 50,
                  child: Stack(children: [
                    Positioned(
                      child: Text('关注'),
                      left: 0,
                      top: 14,
                    )
                  ]))));
          return;
        }
        _tabs[0] = Tab(
            child: (Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 6),
          width: 50,
          child: Stack(children: [
            Positioned(
              child: Text('关注'),
              left: 0,
              top: 14,
            ),
            Positioned(
              child: Icon(
                Icons.arrow_drop_down,
                size: 14.0,
              ),
              right: 0,
              top: 18,
            ),
          ]),
        )));
        return;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        // color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: kDefaultTabBarPadding.copyWith(left: 0, top: 9),
              child: Row(children: [
                Expanded(
                  child: TabBar(
                    controller: _tabController,
                    tabs: _tabs,
                    isScrollable: true,
                    physics: CustomPhysics(),
                    indicator: RoundUnderlineTabIndicator(
                        borderSide: BorderSide(
                            width: 2.5, color: Theme.of(context).accentColor)),
                    unselectedLabelStyle:
                        Theme.of(context).tabBarTheme.unselectedLabelStyle,
                    labelStyle: Theme.of(context).tabBarTheme.labelStyle,
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
              ]),
            ),
            Expanded(
                child: Padding(
              padding: kDefaultTabViewPadding.copyWith(left: 21),
              child: TabBarView(
                physics: CustomPhysics(),
                controller: this._tabController,
                children: this._tabViewList,
              ),
            ))
          ],
        ),
      ),

      //TODO when the list is touched to down, it will disappear
      floatingActionButton: AnimationFloatButton(
        child: Container(width: 50,height: 50,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: IconSize.large_34,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(RadiusSizeConstants.floatButtonSize),
              color: Theme.of(context).accentColor),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

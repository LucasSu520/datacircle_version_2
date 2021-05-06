import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/app_theme.dart';
import 'package:flutter_tuan/component/custom_drawer.dart';
import 'package:flutter_tuan/constants/constant.dart';
import 'package:flutter_tuan/main.dart';
import 'package:flutter_tuan/pages/upcomingPage.dart';
import 'package:flutter_tuan/component/roundUnderlineTabIndicator.dart';
import 'package:flutter_tuan/pages/recommendedPage.dart';
import 'package:flutter_tuan/component/slider_drawer.dart';
import 'RankPage.dart';

class TuanPage extends StatefulWidget {
  Key key;
  TuanPage({this.key});
  @override
  _TuanPageState createState() => _TuanPageState();
}

class _TuanPageState extends State<TuanPage>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  List<Tab> _tabBarList;
  List<Widget> _tabBarViewList;
  TabController mController;
  double position = 0.0;
  double height = 0.0;
  double get maxSlideDistance => MediaQuery.of(context).size.width * 0.7;


  void onSlide(double position) {
    setState(() => {this.position = position});
  }

  @override
  bool get wantKeepAlive => true;
  final EdgeInsets _DefaultEdgeInsets = EdgeInsets.fromLTRB(10, 8, 10, 0);



  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    height = MediaQuery.of(context).size.height - statusBarHeight;

    return Theme(
        data: AppTheme.buildLightTheme(),
        child:  Material(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: this._DefaultEdgeInsets,
                  child: Row(
                    children: [
                      Expanded(
                        child: TabBar(
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: this._tabBarList,
                          controller: mController,
                          indicatorColor: Colors.lightBlue,
                          indicator: RoundUnderlineTabIndicator(
                              borderSide: BorderSide(
                                  width: 4, color: Colors.lightBlue)),
                          labelStyle: AppTheme.SelectedTabText,
                          labelColor: Colors.black,
                          // isScrollable: true,
                          unselectedLabelStyle: AppTheme.UnselectedTabText,
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
                            onPressed: () {

                            },
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

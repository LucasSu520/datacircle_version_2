import 'package:flutter/material.dart';
import 'package:flutter_tuan/pages/forumPage.dart';
import 'package:flutter_tuan/pages/moment_recommendedPage.dart';
import 'package:flutter_tuan/widget/roundUnderlineTabIndicator.dart';
import 'package:flutter_tuan/widget/tile_subscrib.dart';

class MomentsPage extends StatefulWidget {
  @override
  _MomentsPageState createState() => _MomentsPageState();
}

class _MomentsPageState extends State<MomentsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Tab> _tabsOne;
  List<Tab> _tabsTwo;
  List<Tab> _tabs;
  List<Widget> _tabViewList;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    _tabsOne = [
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
      Tab(
        text: '推荐',
      ),
      Tab(
        text: '热榜',
      )
    ];
    _tabsTwo = [
      Tab(
        child: (Container(
          padding: EdgeInsets.only(left: 6),
          width: 50,
          child: Stack(children: [
            Positioned(
              child: Text('关注'),
              left: 0,
              top: 14,
            ),

            //TODO : add the fade effect
            Positioned(
              child: Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
                size: 14.0,
              ),
              right: 0,
              top: 20,
            ),
          ]),
        )),
      ),
      Tab(
        text: '推荐',
      ),
      Tab(
        text: '热榜',
      )
    ];
    _tabViewList = [
      ListView.builder(
        itemCount: 3,
        padding: EdgeInsets.fromLTRB(19, 8, 15, 0),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: TileSubscribe(),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
          );
        },
      ),
      MomentRecommendedPage(),
      ForumPage(),
    ];
    _tabs = this._tabsOne;
    _tabController.addListener(() {
      setState(() {
        if (_tabController.index != 0) {
          _tabs = _tabsTwo;
          return;
        }
        _tabs = _tabsOne;
        return;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white,
        child: Column(
          children: [
            Row(children: [
              Expanded(
                  child: GestureDetector(
                    child: TabBar(
                      controller: _tabController,
                      tabs: _tabs,
                      isScrollable: true,
                      indicator: RoundUnderlineTabIndicator(
                        borderSide: BorderSide(color: Colors.lightBlue, width: 2),
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 15.0,
                      ),
                      unselectedLabelColor: Colors.grey,
                      labelStyle: TextStyle(fontSize: 20.0),
                      labelColor: Colors.black,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 8, 20, 0),
                child: (CircleAvatar(
                  radius: 14.0,
                  backgroundImage: AssetImage('images/duoduo.jpg'),
                )),
              ),
            ]),
            Expanded(
              child: TabBarView(
                controller: this._tabController,
                children: this._tabViewList,
              ),
            )
          ],
        ),
      ),

      //TODO when the list is touched to down, it will disappear
      floatingActionButton: FloatingActionButton(child: Text('多多'),onPressed: (){print('woaini');},),
    );
  }
}

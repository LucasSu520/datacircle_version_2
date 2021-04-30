import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/common_model.dart';
import 'package:flutter_tuan/widget/roundUnderlineTabIndicator.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage>
    with TickerProviderStateMixin {
  List<CommonModel> localNavList;
  List<Tab> _tabBarList;
  TabController mController;
  TabBarView _tabBarView;

  @override
  void initState() {
    this._tabBarList = [
      Tab(
        text: '互动',
      ),
      Tab(
        text: '订阅动态',
      ),
      Tab(
        text: '通知',
      ),
      Tab(
        text: '好友',
      )
    ];
    this.mController =
        new TabController(length: this._tabBarList.length, vsync: this);
    this._tabBarView = new TabBarView(
      children: [
        ListView(children: [
          Padding(padding: EdgeInsets.only(left: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/duoduo.jpg',),radius: 24,
              ),
              title: Text('钢琴吧有新消息'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [SizedBox(height: 4,),
                  Text(
                    '没想到你是这样的人',
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 4,),
                  Text(
                    '6天前',
                    style: TextStyle(fontSize: 9),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ]),
        ListView(children: [
          Padding(padding: EdgeInsets.only(left: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/duoduo.jpg',),radius: 24,
              ),
              title: Text('钢琴吧有新消息'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [SizedBox(height: 4,),
                  Text(
                    '没想到你是这样的人',
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 4,),
                  Text(
                    '6天前',
                    style: TextStyle(fontSize: 9),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ]),
        ListView(children: [
          Padding(padding: EdgeInsets.only(left: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/duoduo.jpg',),radius: 24,
              ),
              title: Text('钢琴吧有新消息'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [SizedBox(height: 4,),
                  Text(
                    '没想到你是这样的人',
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 4,),
                  Text(
                    '6天前',
                    style: TextStyle(fontSize: 9),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ]),
        ListView(children: [
          Padding(padding: EdgeInsets.only(left: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/duoduo.jpg',),radius: 24,
              ),
              title: Text('钢琴吧有新消息'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [SizedBox(height: 4,),
                  Text(
                    '没想到你是这样的人',
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 4,),
                  Text(
                    '6天前',
                    style: TextStyle(fontSize: 9),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ],
      controller: this.mController,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(18, 8, 18, 0),
              child: Row(children: [
                Expanded(
                  child: Text(
                    '消息',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.settings,
                    size: 28,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/duoduo.jpg'),
                    radius: 14,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 18, 0),
              child: Container(
                height: 35,
                child: TabBar(
                  isScrollable: true,
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
                alignment: Alignment.centerLeft,
              ),
            ),
            Expanded(
              child: this._tabBarView,
            )
          ],
        ));
  }
}

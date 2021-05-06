import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Drawer(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.fromLTRB(10, statusBarHeight + 8, 10, 0),
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 30, 0),
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/duoduo.jpg'),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('Christine黄忆慈'),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                Expanded(
                  child: Align(
                    child: Image(
                      image: AssetImage(
                        'icons/scan.png',
                      ),
                      width: 30,
                      height: 30,
                    ),
                    alignment: Alignment.topRight,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
              leading: Image(
                image: AssetImage('icons/moment.png'),
                width: 30,
                height: 30,
              ),
              title: Text('动态'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
              leading: Image(
                image: AssetImage('icons/subscription.png'),
                width: 30,
                height: 30,
              ),
              title: Text('关注'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
              leading: Image(
                image: AssetImage('icons/friends.png'),
                width: 30,
                height: 30,
              ),
              title: Text('好友'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
              leading: Image(
                image: AssetImage('icons/favorite.png'),
                width: 30,
                height: 30,
              ),
              title: Text("收藏"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
                leading: Image(
                  image: AssetImage('icons/order.png'),
                  width: 30,
                  height: 30,
                ),
                title: Text('订单')),
          ),
          Divider(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
              leading: Icon(CupertinoIcons.shopping_cart),
              title: Text('商城周边'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
              leading: Icon(CupertinoIcons.bag_badge_minus),
              title: Text('兑换中心'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
              leading: Icon(CupertinoIcons.create),
              title: Text('建议和反馈'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
              leading: Icon(CupertinoIcons.settings),
              title: Text('设置'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
              leading: Icon(CupertinoIcons.exclamationmark_circle),
              title: Text('当前版本 1.0.0'),
            ),
          ),
          Divider(
            height: 3,
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ListTile(
              leading: Icon(CupertinoIcons.square_arrow_left),
              title: Text('退出登录'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tuan/pages/cat_avtivity_list_page.dart';
import 'package:flutter_tuan/pages/cat_page.dart';
import 'package:flutter_tuan/pages/message_page.dart';
import 'package:flutter_tuan/pages/moment_page.dart';
import 'package:flutter_tuan/pages/moment_sub_activity_list_page.dart';
import 'package:flutter_tuan/pages/my_page.dart';
import 'package:flutter_tuan/pages/tuan_activity_list_page.dart';
import 'package:flutter_tuan/pages/tuan_page.dart';

class TabNavigator extends StatefulWidget {
  Key key;
  TabNavigator({this.key});
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {

  List<Widget> pages=[];
  int _currentPage;



  @override
  void initState() {
    pages=[TuanPage(),CategoryPage(),MomentsPage(),MessagePage(),MyPage()];
    this._currentPage=0;
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(brightness: Brightness.light,toolbarHeight: 0,),
      body: IndexedStack(
        index: _currentPage,
        children:pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: ((index){
          setState(() {
            if(_currentPage==index){
              switch (index){
                case 0:
                  TuanActivityListPage.tuanActivityScrollController.jumpTo(0.0);
                  break;
                case 1:
                  CategoryPage.catActivityController.jumpTo(0.0);
                  break;
                case 2:
                  MomentSubActivityListPage.MomentController.jumpTo(0.0);
                  break;
              }
            }
            _currentPage=index;
          });
        }),
        currentIndex: _currentPage,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        selectedItemColor: Theme.of(context).accentColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: '团'),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: '动态'),
          BottomNavigationBarItem(icon: Icon(Icons.mail),label: '消息'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: '我的'),
        ],
      ),
    );
  }
}

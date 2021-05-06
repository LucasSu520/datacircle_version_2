import 'package:flutter/material.dart';
import 'package:flutter_tuan/pages/categoryPage.dart';
import 'package:flutter_tuan/pages/messagePage.dart';
import 'package:flutter_tuan/pages/momentsPage.dart';
import 'package:flutter_tuan/pages/myPage.dart';
import 'package:flutter_tuan/pages/tuanPage.dart';

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
            _currentPage=index;
          });
        }),
        currentIndex: _currentPage,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
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

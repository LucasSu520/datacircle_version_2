import 'package:flutter/material.dart';
import 'package:flutter_tuan/app_theme.dart';
import 'package:flutter_tuan/component/custom_drawer.dart';
import 'package:flutter_tuan/navigator/tab_navigator.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
}

class MyApp extends StatelessWidget {

  static final  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      theme:AppTheme.buildLightTheme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: CustomDrawer(),
        key: scaffoldKey,
        body: TabNavigator(),
      ),
    );
  }
}



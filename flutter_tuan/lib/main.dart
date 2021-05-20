import 'package:flutter/material.dart';
import 'package:flutter_tuan/app_theme.dart';
import 'package:flutter_tuan/component/custom_drawer.dart';
import 'package:flutter_tuan/navigator/tab_navigator.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'component/animation_float_button.dart';

void main() {
  NotifierAnimation notifierAnimation = NotifierAnimation();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: notifierAnimation),
    ],
    child: MyApp(),
  ));
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


    return Theme(data:AppTheme.buildLightTheme() ,child: MaterialApp(
      theme:AppTheme.buildLightTheme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: CustomDrawer(),
        key: scaffoldKey,
        body: TabNavigator(),
      ),
    ),);
  }
}



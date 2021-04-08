import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tuan/navigator/tab_navigator.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  // 以下两行 设置android状态栏为透明的沉浸。
  // 写在组件渲染之后，是为了在渲染后进行set赋值,覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
  // SystemUiOverlayStyle systemUiOverlayStyle =
  // SystemUiOverlayStyle(statusBarColor: Colors.white);
  // SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:ThemeData(
          appBarTheme: AppBarTheme(
            elevation: 0.0,
            color: Colors.white,
            brightness: Brightness.light,
          ),
        ),
      debugShowCheckedModeBanner: false,
      home: TabNavigator(),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xffF0F0F0);

  static const Color transparent = Color(0xFFFFFF00);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color selectedText=Color(0xFF111111);
  static const Color unselectedText=Color(0xFF999999);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline1,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,

  );

  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline1 = TextStyle(
    // h5 -> headline
    fontWeight: FontWeight.bold,
    fontSize: 22,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle headline2 =TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    letterSpacing: 0.20,
    color: darkerText
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle selectedTabText = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 19.0,
      letterSpacing: 1,
      color: darkerText);

  static const TextStyle unselectedTabText =
      TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0, color: dark_grey);

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontWeight: FontWeight.w200,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontWeight: FontWeight.w200,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );

  static ThemeData buildLightTheme() {
    final Color primaryColor = Colors.white;
    final Color secondaryColor = HexColor('#10DEB5');
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: secondaryColor,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.white,
      tabBarTheme: _buildTabBar(),
      backgroundColor: const Color(0xFFFFFFFF),
      scaffoldBackgroundColor: const Color(0xFFF6F6F6),
      errorColor: const Color(0xFFB00020),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: buildWhiteBar(),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme),
      platform: TargetPlatform.iOS,
    );
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    const String fontName = 'PingFang';
    return base.copyWith(
      headline1: base.headline1.copyWith(fontFamily: fontName),
      headline2: base.headline2.copyWith(fontFamily: fontName),
      headline3: base.headline3.copyWith(fontFamily: fontName),
      headline4: base.headline4.copyWith(fontFamily: fontName),
      headline5: base.headline5.copyWith(fontFamily: fontName),
      headline6: base.headline6.copyWith(fontFamily: fontName),
      button: base.button.copyWith(fontFamily: fontName),
      caption: base.caption.copyWith(fontFamily: fontName),
      bodyText1: base.bodyText1.copyWith(fontFamily: fontName),
      bodyText2: base.bodyText2.copyWith(fontFamily: fontName),
      subtitle1: base.subtitle1.copyWith(fontFamily: fontName),
      subtitle2: base.subtitle2.copyWith(fontFamily: fontName),
      overline: base.overline.copyWith(fontFamily: fontName),
    );
  }

  static AppBarTheme buildWhiteBar() {
    final AppBarTheme base = AppBarTheme();
    return base.copyWith(
      color: Colors.white,
      elevation: 0.0,
      brightness: Brightness.light,
    );
  }

  static TabBarTheme _buildTabBar() {
    final TabBarTheme base = TabBarTheme();
    return base.copyWith(
      labelColor: darkerText,
      labelStyle: selectedTabText,
      unselectedLabelColor: unselectedText,
      unselectedLabelStyle: unselectedTabText,
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

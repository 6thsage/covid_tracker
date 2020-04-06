import 'package:covid_tracker/shared/theme/colors.dart';
import 'package:flutter/material.dart';

// final iosAppTheme = CupertinoThemeData(
//   primaryColor: healthcloudPrimaryColor,
//   barBackgroundColor: healthcloudPrimaryColor,
//   scaffoldBackgroundColor: healthcloudBackgroundColor,
// );

final ThemeData androidAppTheme = buildTheme();
//use accordingly with guidance from the title
ThemeData buildTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    // refer to this https://stackoverflow.com/a/57866039
    // pageTransitionsTheme: PageTransitionsTheme(builders: {
    //   TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
    //   TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    // }),
    //cyan
    accentColor: confirmedCasesBackgroundColor,
    primaryColor: recoveredBackgroundColor,
    backgroundColor: appBackgroundColor,
    errorColor: redText,
    textSelectionColor: greenText,

    // Text theme
    textTheme: _androidTextTheme(base.textTheme),
    primaryTextTheme: _androidTextTheme(base.primaryTextTheme),
    accentTextTheme: _androidTextTheme(base.accentTextTheme),
  );
}

TextTheme _androidTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline3: base.headline3.copyWith(fontWeight: FontWeight.w600),
        subtitle1: base.subtitle1.copyWith(fontWeight: FontWeight.w400),
        subtitle2: base.subtitle2.copyWith(fontWeight: FontWeight.w400),
        caption:
            base.caption.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400),
      )
      .apply(
        fontFamily: 'ProductSans',
      );
}

// displayColor: healthcloudTextColor

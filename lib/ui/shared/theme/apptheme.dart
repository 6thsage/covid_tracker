import 'package:covid_tracker/ui/shared/theme/colors.dart';
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
        headline3: base.headline3
            .copyWith(fontSize: 34.0, fontWeight: FontWeight.w700),
        //mainly used on the AppBar titles
        headline4: base.headline4
            .copyWith(fontSize: 28.0, fontWeight: FontWeight.w700),
        //use this for non-bold headlines accordingly as in the designs
        headline5: base.headline5
            .copyWith(fontSize: 24.0, fontWeight: FontWeight.w700),
        //card titles
        headline6: base.headline6
            .copyWith(fontSize: 20.0, fontWeight: FontWeight.w700),

        //section titles
        subtitle1: base.subtitle1
            .copyWith(fontSize: 18.0, fontWeight: FontWeight.w700),
        //all subtitles
        subtitle2: base.subtitle2
            .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400),

        //paragraph text
        bodyText2: base.bodyText2
            .copyWith(fontSize: 14.0, fontWeight: FontWeight.w400),

        //applicable where there are caption fonts sized
        caption:
            base.caption.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400),
      )
      .apply(fontFamily: 'ProductSans', displayColor: textColor);
}

// displayColor: healthcloudTextColor

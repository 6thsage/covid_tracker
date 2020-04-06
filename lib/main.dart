import 'package:covid_tracker/pages/home/homepage.dart';
import 'package:covid_tracker/shared/theme/apptheme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: androidAppTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}

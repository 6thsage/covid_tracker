import 'package:covid_tracker/logic/redux/app_state.dart';
import 'package:covid_tracker/logic/redux/store.dart';
import 'package:covid_tracker/ui/pages/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:covid_tracker/ui/shared/theme/apptheme.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() => runApp(MyApp(
      store: store,
    ));

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({Key key, this.store}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: HomePage(),
        theme: androidAppTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

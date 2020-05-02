import 'package:flutter/material.dart';

import 'all_cases.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: AppTitle(),
      ),
    ));
  }
}

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Global Outlook',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.black.withOpacity(0.8)),
              ),
              Text(
                'Track the Coronavirus global outbreak',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        Container(
          child: AllCases(),
        )
      ],
    );
  }
}

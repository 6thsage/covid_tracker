import 'package:flutter/material.dart';

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

// class HomePage extends StatefulWidget {
//   // Homepage({Key key}) : super(key: key);
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Expanded(
//         child: AppTitle(),
//       ),
//     );
//   }
// }

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Global Outlook',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
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
    );
  }
}

// class DataCard extends StatelessWidget{

// }

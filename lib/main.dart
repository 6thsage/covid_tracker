import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Interest Calculator',
    home: CalculatorForm(),
  ));
}

class CalculatorForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainCalculcatorForm();
  }
}

class _MainCalculcatorForm extends State<CalculatorForm> {
  final minSpacing = 10.0;
  var currencies = ['KES', 'USD', 'BTC', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        margin: EdgeInsets.all(minSpacing * 2),
        child: ListView(
          children: <Widget>[
            getImage(),
            Padding(
                padding: EdgeInsets.only(top: minSpacing, bottom: minSpacing),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Principal',
                        hintText: 'Please Enter Princial Amount',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )))),
            Padding(
              padding: EdgeInsets.only(top: minSpacing, bottom: minSpacing),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Rate if Interest',
                  hintText: 'Please Enter Interest Rate',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Term',
                    hintText: 'Enter your Term'
                  )
                  ,)
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget getImage() {
  AssetImage assetImage = AssetImage('images/zom.png');
  Image image = Image(
    image: assetImage,
    width: 100.0,
    height: 100.0,
  );

  return Container(
    child: image,
  );
}

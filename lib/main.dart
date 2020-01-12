import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GetUserInput(),
  ));
}

class GetUserInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlightDetails();
  }
}

class _FlightDetails extends State<GetUserInput> {
  String nameInput = '';
  var _countries = ['Kenya', 'Uganda', 'Tanzania'];
  var currentlySelectedItem = 'Kenya';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('App Title')),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              
              onSubmitted: (String userInput) {
                setState(() {
                  nameInput = userInput;
                });
              },
            ),
            DropdownButton<String>(
              items: _countries.map((String singleCountryItem){
                return DropdownMenuItem<String>(
                  value: singleCountryItem,
                  child: Text(singleCountryItem),
                );
              }).toList(),
              onChanged: (String newValueSelected){
                setState(() {
                  currentlySelectedItem = newValueSelected;
                });
              },
              value: currentlySelectedItem,
            ),
            Text('Your City is $nameInput')
          ],
        ),
      ),
    );
  }
}

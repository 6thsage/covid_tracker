import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class AllCases extends StatefulWidget {
  @override
  _AllCasesState createState() => _AllCasesState();
}

class _AllCasesState extends State<AllCases> {
  @override
  Widget build(BuildContext context) {
    Future<List<AllCasesData>> _getCases() async {
      var url = 'https://coronavirus-tracker-api.herokuapp.com/v2/latest';

      final response = await http.get(url);
      var results = jsonDecode(response.body);
      print(results);
      // return results.map((element) => AllCasesData.fromJSON(element)).toList();
    }

    return Expanded(
      child: Container(
        child: FutureBuilder(
            future: _getCases(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                          title: Text(snapshot.data[index].confirmed));
                    });
              } else {
                return Align(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}

class AllCasesData {
  final int confirmed;
  final int deaths;
  final int recovered;

  AllCasesData({this.confirmed, this.deaths, this.recovered});
}

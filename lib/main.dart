import 'package:flutter/material.dart';
// import 'screens/home.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter App",
    home: Scaffold(
      body: listView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB clicked');
        },
        child: Icon(Icons.add),
      ),
    ),
  ));
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text('You have clicked $item'),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> generateListItems() {
  var items = List<String>.generate(100, (counter) => 'Item $counter');
  return items;
}

Widget listView() {
  var listItems = generateListItems();
  var ourListView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      title: Text(listItems[index]),
      onTap: () {
        showSnackBar(context, listItems[index]);
      },
    );
  });
  return ourListView;
}

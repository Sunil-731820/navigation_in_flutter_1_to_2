import 'package:flutter/material.dart';
import 'package:navigation_in_flutter_1_to_2/SecondPage.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  final list = [
    Icon(Icons.text_snippet_rounded),
    Icon(
      Icons.ac_unit,
    ),
    Icon(
      Icons.ac_unit,
    ),
    Icon(
      Icons.ac_unit,
    ),
    Icon(
      Icons.ac_unit,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "first Page",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var navigationResult = await Navigator.push(context,
              new MaterialPageRoute(builder: (context) => SecondPage()));
          if (navigationResult == 'from_back') {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text("Navigation from the  back side "),
                    ));
          } else if (navigationResult == 'from_button') {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text("navigation from the button"),
                    ));
          }
        },
      ),
      body: Container(
        child: Center(
          child: Text(
            "Page 1",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.list),
            title: Text("data At Index $index"),
            trailing: Icon(Icons.done),
          );
        }),
      ),
    );
  }
}

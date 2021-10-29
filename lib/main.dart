import 'package:flutter/material.dart';
import 'FirstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The navigation bar ",
      debugShowCheckedModeBanner: false,
      home: firstPage(),
    );
  }
}

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _popNavigationWithResult(context, 'from back');
        return false;
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _popNavigationWithResult(context, 'from button');
          },
        ),
        body: Container(
          child: Center(
            child: Text(
              "Second Page",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  void _popNavigationWithResult(BuildContext context, dynamic result) {
    Navigator.pop(context, result);
  }
}

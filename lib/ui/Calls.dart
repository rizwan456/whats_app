import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  _Calls createState() => _Calls();
}

class _Calls extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: FloatingActionButton(
          onPressed: () {
            //perform contacts action
          },
          child: Icon(Icons.message),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  _Status createState() => _Status();
}

class _Status extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: FloatingActionButton(
                onPressed: () {
                  //perform contacts action
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SavedContact(),
                      ));*/
                },
                child: Icon(Icons.camera_alt),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: FloatingActionButton(
                elevation: 1.5,
                onPressed: () {
                  //perform contacts action
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SavedContact(),
                      ));*/
                },
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.edit,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

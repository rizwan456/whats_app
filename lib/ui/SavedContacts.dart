import 'package:flutter/material.dart';

class SavedContact extends StatefulWidget {
  ContactView createState() => ContactView();
}

class ContactView extends State<SavedContact> {
  final key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text("Select Contacts"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              //search action
              key.currentState.showSnackBar(SnackBar(
                content: new Text("Search Clicked"),
                duration: Duration(seconds: 1),
              ));
            },
          ),
          IconButton(
            icon: Icon(Icons.linear_scale),
            onPressed: () {
              //perform menu action
              key.currentState.showSnackBar(SnackBar(
                content: new Text("Menu Clicked"),
                duration: Duration(seconds: 1),
              ));
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              key.currentState.showSnackBar(SnackBar(
                content: new Text("New Group Clicked"),
                duration: Duration(seconds: 1),
              ));
            },
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: IconButton(
                          icon: Icon(Icons.group),
                          onPressed: () {},
                          iconSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "New Group",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: IconButton(
                        icon: Icon(Icons.add_call),
                        onPressed: () {},
                        iconSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "New Contact",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

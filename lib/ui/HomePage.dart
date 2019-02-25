import 'package:flutter/material.dart';
import 'package:whats_app/ui/CameraApp.dart';

class HomePage extends StatefulWidget {
  Home createState() => Home();
}

class Home extends State<HomePage> {
  final key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          initialIndex: 1,
          child: Scaffold(
            key: key,
            appBar: AppBar(
              bottom: TabBar(
                isScrollable: false,
                tabs: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Tab(icon: Icon(Icons.linked_camera)),
                  ),
                  Tab(
                    text: "CHATS",
                  ),
                  Tab(text: "STATUS"),
                  Tab(text: "CALLS")
                ],
              ),
              title: Text("WhatsApp Demo"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    //perform search action
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
                      content: new Text("Settings Menu Clicked"),
                      duration: Duration(seconds: 1),
                    ));
                  },
                )
              ],
            ),
            body: TabBarView(
                children: <Widget>[camera(), chat(), status(), calls()]),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: FloatingActionButton(
                onPressed: () {
                  //perform contacts action
                  key.currentState.showSnackBar(SnackBar(
                    content: new Text("Contacts Clicked"),
                    duration: Duration(seconds: 1),
                  ));
                },
                child: Icon(Icons.message),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endDocked,
          )),
    );
  }

  Widget camera() {
    return Center(child: Text("Inside Camera"));
   // return CameraApp();
  }

  Widget chat() {
    return Center(child: Text("Inside Chats"));
  }

  Widget status() {
    return Center(child: Text("Inside status"));
  }

  Widget calls() {
    return Center(child: Text("Inside Calls"));
  }
}

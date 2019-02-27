import 'package:flutter/material.dart';
import 'package:whats_app/model/chat_model.dart';
import 'package:whats_app/ui/HomePage.dart';
import 'package:whats_app/ui/SavedContacts.dart';

class Chat extends StatefulWidget {
  ChatView createState() => ChatView();
}

class ChatView extends State<Chat> {
  final key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: Expanded(
        child: ListView.builder(
          itemBuilder: (context, i) => Column(
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      key.currentState.showSnackBar(SnackBar(
                        content: new Text(dummyData[i].name),
                        duration: Duration(seconds: 1),
                      ));
                    },
                    leading: GestureDetector(
                      onTap: (){
                        _showDialog(dummyData[i].avtarUrl);
                        /*key.currentState.showSnackBar(SnackBar(
                          content: new Text(dummyData[i].time),
                          duration: Duration(seconds: 1),
                        ));*/
                      },
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(dummyData[i].avtarUrl),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          dummyData[i].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(dummyData[i].time,
                            style: TextStyle(color: Colors.grey, fontSize: 14.0))
                      ],
                    ),
                    subtitle: Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(dummyData[i].message,
                          style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                    ),
                  ),
                  Divider(
                    height: 10.0,
                  ),
                ],
              ),
          itemCount: dummyData.length,
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: FloatingActionButton(
          onPressed: () {
            //perform contacts action
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SavedContact(),
                ));
          },
          child: Icon(Icons.message),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  void _showDialog(path) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            width: 400.0,
            height: 300.0,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: NetworkImage(path),
                    fit: BoxFit.fill)),
          ),
        );
      },
    );
  }
}

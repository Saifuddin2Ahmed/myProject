import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/login_screen.dart';
import 'package:flutter_app/signUp.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter_app/user_model.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:flutter/src/material/list_tile.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positive Youth'),
        centerTitle: true,
        actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Saifuddin Ahmed",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("safadeenahmed@gmail.com"),
              /* currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage('')),*/
            ),

            ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.send),
            ),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.inbox),
            ),

            ListTile(
              title: Text('Stared'),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Archive'),
              leading: Icon(Icons.archive),
            ),

            ListTile(
              title: Text('Chat'),
              leading: Icon(Icons.chat),
            ),
            ListTile(
              title: Text('Log out'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: (){},
      ),
    );
  }
}



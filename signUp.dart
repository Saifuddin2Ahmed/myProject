
import 'package:flutter/src/material/raised_button.dart';
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
class MyForm extends StatefulWidget {
  const MyForm({Key key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      height: 200.0,
                      child: Image.asset("images/sign.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.person),
                          hintText: 'Enter your Name',
                          labelText: "Name",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.phone),
                          hintText: 'Enter your Phone Number',
                          labelText: "Phone Number",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.today),
                          hintText: 'Enter your birth day',
                          labelText: "Birth Day",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: RaisedButton(
                          color: Colors.red,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => home(),
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

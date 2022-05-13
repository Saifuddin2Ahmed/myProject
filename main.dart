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


 Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {},
      title: 'Hello World Positive Youth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login'),
      debugShowCheckedModeBanner: false,
      //home:LoginScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            this.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // leading: Icon(Icons.icecream),
          // actions: [Icon(Icons.icecream)],
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(children: <Widget>[
            Container(
                width: 200,
                height: 200,
                child: Image.asset('images/login.jpg')),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.red, Colors.blueAccent]),
                ),
                child: FlatButton(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home(),
                        ));
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RichText(
                  text: TextSpan(
                      text: 'Dont have an account ?! ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyForm(),
                                ));
                          })
                  ])),
            )
          ]),
        ));
  }
}

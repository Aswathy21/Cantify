import 'package:cantify/screens/admin/adminlogin.dart';
import 'package:cantify/screens/user/userlogin.dart';
import 'package:cantify/screens/manager/managerlogin.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      routeName: "/",
      backgroundColor: Colors.black,
      image: Image.asset('asset/cantify.png'),
      title: Text('Cantify',
          style: TextStyle(
              color: Colors.orange,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 30)),
      loaderColor: Colors.orangeAccent,
      photoSize: 150.0,
      navigateAfterSeconds: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MainScreen> {
  @override
  FirstRoute createState() => FirstRoute();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Cantify"),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(40),
                child: Text(
                  'Sign In as ->',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 15.0, left: 50.0, right: 50.0),
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.orange,
                    child: Text('User', style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstRoute()),);
                    },
                  )),
              Container(
                  padding: EdgeInsets.only(top: 15.0, left: 50.0, right: 50.0),
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.orange,
                    child: Text('Admin', style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FifthRoute()),
                      );
                    },
                  )),
              Container(
                  padding: EdgeInsets.only(top: 15.0, left: 50.0, right: 50.0),
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.orange,
                    child:
                    Text('Canteen Manager', style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FouthRoute()),
                      );
                    },
                  )),
            ],
          )),
    );
  }
}


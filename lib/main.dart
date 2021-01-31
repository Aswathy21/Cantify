import 'package:cantify/screens/admin/adminlogin.dart';
import 'package:cantify/screens/admin/home2.dart';
import 'package:cantify/screens/user/userlogin.dart';
import 'package:cantify/screens/manager/managerlogin.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
      image: Image.asset('assets/images.png'),
<<<<<<< HEAD
      title: Text('Cantify',
          style: GoogleFonts.lobsterTwo(textStyle:TextStyle(
              color: Colors.orange,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 50))),
      loaderColor: Colors.white,
      photoSize: 200.0,
=======
      title: Text('\n\n\nCantify',
          style: TextStyle(
              color: Colors.orange,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 30)),
      loaderColor: Colors.white,
      photoSize: 150.0,
>>>>>>> 504513248c2e60cf114f7caf015cdaa648bee175
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
  MainScreen createState() => MainScreen();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Cantify",style: GoogleFonts.abel()),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(40),
                child: Text(
                  '\n\nSign In As',
                    style: GoogleFonts.acme(textStyle:TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 40)),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.0, left: 60.0, right: 60.0),
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.orange,
                    child: Text('USER', style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage2()),);
                    },
                  )),
              Container(
                  padding: EdgeInsets.only(top: 20.0, left: 60.0, right: 60.0),
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.orange,
                    child: Text('ADMIN', style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      Navigator.push(
                        context,
<<<<<<< HEAD
                        MaterialPageRoute(builder: (context) => HomeScreen2()),
=======
                        MaterialPageRoute(builder: (context) => LoginPage()),
>>>>>>> 504513248c2e60cf114f7caf015cdaa648bee175
                      );
                    },
                  )),
              Container(
                  padding: EdgeInsets.only(top: 20.0, left: 60.0, right: 60.0),
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.orange,
                    child:
                    Text('CANTEEN MANAGER', style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage1()),
                      );
                    },
                  )),
            ],
          )),
    );
  }
}


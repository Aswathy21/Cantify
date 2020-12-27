import 'package:cantify/screens/user/profile.dart';
import 'file:///C:/Cantify/lib/screens/admin/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'menu1.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BuildContext _ctx;

  //void profile() {
  //Navigator.of(context).pushNamed("/profile");
  //}
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange ,
        title: Text("Welcome!"),
      ),
      body:Container(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 28.0,
              vertical: 100.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('C',
                        style: TextStyle(fontFamily: 'Montserrat',
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),Text('ANTIF',
                        style: TextStyle(fontFamily: 'Montserrat',
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text('Y',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 80,
                  ),

                  Container(
                    height: 50.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(25.0),
                      shadowColor: Colors.orangeAccent,
                      color: Colors.orangeAccent,
                      elevation: 10.0,
                      child: InkWell(
                        onTap: () =>
                        {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>profile()),),
                        },
                        child: Center(
                          child: Text(
                            'Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    height: 50.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(25.0),
                      shadowColor: Colors.orangeAccent,
                      color: Colors.orangeAccent,
                      elevation: 10.0,
                      child: InkWell(
                        onTap: () {
<<<<<<< HEAD
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>MyMenuPage()),);
=======
                         // Navigator.push(context,MaterialPageRoute(builder: (context)=>apos()),);
>>>>>>> 8732bba471d709ae27f7b6956aa8a58091c0a1af
                        },
                        child: Center(
                          child: Text(
                            'Menu',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize:20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                ],
              ),
            ),

          ),
        ),
      ),
    );
  }
}

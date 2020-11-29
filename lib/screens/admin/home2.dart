import 'package:cantify/forgotpsw.dart';
import 'package:cantify/screens/admin/register.dart';
import 'package:cantify/screens/user/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
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
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images2.jpg"),
                          fit: BoxFit.cover),
                    ),
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
                        //  Navigator.push(context),
                        },
                        child: Center(
                          child: Text(
                            '???',
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Register()),);

                        },
                        child: Center(
                          child: Text(
                            'Add New User',
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
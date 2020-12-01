
import 'package:cantify/screens/manager/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dish.dart';
import 'menu2.dart';
import 'order.dart';


class HomeScreen3 extends StatefulWidget {
  @override
  _HomeScreen3tate createState() => _HomeScreen3tate();
}

class _HomeScreen3tate extends State<HomeScreen3>{
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Dish()),)
                        },
                        child: Center(
                          child: Text(
                            'Add to menu',
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>MyMenuPage2(),),);

                        },
                        child: Center(
                          child: Text(
                            'View Existing Menu',
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>apos2()),);

                        },
                        child: Center(
                          child: Text(
                            'View Orders',
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

                ],
              ),
            ),

          ),
        ),
      ),
    );
  }
}
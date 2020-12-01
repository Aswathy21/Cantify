import 'package:cantify/screens/manager/home3.dart';
import 'package:flutter/material.dart';



class Dish extends StatelessWidget {
  TextEditingController dnameController = TextEditingController();
  TextEditingController rateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange ,
        title: Text("Add dish"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: dnameController,
                      decoration: InputDecoration(
                          labelText: ' DISH NAME',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          // hintText: 'EMAIL',
                          // hintStyle: ,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.orangeAccent))),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: rateController,
                      decoration: InputDecoration(
                          labelText: 'RATE',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          // hintText: 'EMAIL',
                          // hintStyle: ,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.orangeAccent))),
                    ),

                    SizedBox(height: 25.0),
                    Container(
                        padding: EdgeInsets.only(top: 5.0, left: 40.0, right: 40.0),
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.redAccent,
                          color: Colors.orange,
                          elevation: 7.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen3()),);

                            },
                            child: Center(
                              child: Text(
                                'Add Dish',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 25.0),
                    Container(
                      padding: EdgeInsets.only(top: 3.0, left: 40.0, right: 40.0),
                      height: 40.0,
                      color: Colors.transparent,
                      child: Material(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.orange,
                        elevation: 7.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen3()),);

                          },
                          child: Center(
                            child: Text('Back',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
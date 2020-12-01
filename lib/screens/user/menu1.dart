import 'package:cantify/screens/user/token.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: MyMenuPage(),
    debugShowCheckedModeBanner: false,));
}

class MyMenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MyMenuPage> {
  bool valuefirst = false;
  bool valuesecond = false;
  //bool valuesthird = false;
  bool valuefourth = false;
  bool valuefifth = false;
  bool valuesix = false;
  bool valueseven = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.orange ,title: Text('Menu'),),
          body: Container(

            child: Column(
              children: <Widget>[
                //Row(
                // children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Today's Menu",textScaleFactor: 1.5,style: TextStyle(fontWeight:FontWeight.bold),),
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Text('NO     NAME                      RATE',style: TextStyle(fontSize: 18.0,fontWeight:FontWeight.bold), ),
                    ]),
                Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Text('1     Chappathi                   4.00',style: TextStyle(fontSize: 17.0), ),
                      Checkbox(
                        checkColor: Colors.greenAccent,
                        activeColor: Colors.red,
                        value: this.valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuefirst = value;
                          });
                        },
                      ),
                    ]),
                Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Text('2     Porotta                       7.00',style: TextStyle(fontSize: 17.0), ),
                      Checkbox(
                        checkColor: Colors.greenAccent,
                        activeColor: Colors.red,
                        value: this.valuesecond,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuesecond = value;
                          });
                        },
                      ),
                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Text('3     Chicken Biriyani       50.00',style: TextStyle(fontSize: 17.0), ),
                      Checkbox(
                        checkColor: Colors.greenAccent,
                        activeColor: Colors.red,
                        value: this.valuefourth,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuefourth = value;
                          });
                        },
                      ),
                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Text('4     Veg Biriyani               40.00',style: TextStyle(fontSize: 17.0), ),
                      Checkbox(
                        checkColor: Colors.greenAccent,
                        activeColor: Colors.red,
                        value: this.valuefifth,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuefifth = value;
                          });
                        },
                      ),
                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Text('5     Lime Juice                10.00',style: TextStyle(fontSize: 17.0), ),
                      Checkbox(
                        checkColor: Colors.greenAccent,
                        activeColor: Colors.red,
                        value: this.valuesix,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuesix = value;
                          });
                        },
                      ),
                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Text('6     Orange Juice            20.00',style: TextStyle(fontSize: 17.0), ),
                      Checkbox(
                        checkColor: Colors.greenAccent,
                        activeColor: Colors.red,
                        value: this.valueseven,
                        onChanged: (bool value) {
                          setState(() {
                            this.valueseven = value;
                          });
                        },
                      ),
                    ]
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>token()),);

                        },
                        child: Center(
                          child: Text(
                            'Place Order',
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
              ],
            ),
            // ],
          )
      ),

    );
  }
}
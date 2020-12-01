import 'package:flutter/material.dart';

import 'home3.dart';

void main() {
  runApp(MaterialApp( home: MyMenuPage2(),
    debugShowCheckedModeBanner: false,));
}

class MyMenuPage2 extends StatefulWidget {
  @override
  _MenuPage2State createState() => _MenuPage2State();
}

class _MenuPage2State extends State<MyMenuPage2> {
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
                  padding: const EdgeInsets.all(22.0),
                  child: Text("Today's Menu",textScaleFactor: 1.5,style: TextStyle(fontWeight:FontWeight.bold),),
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Text('NO     NAME                      RATE',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold), ),
                    ]),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('                       ',style: TextStyle(fontSize: 19.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('1     Chappathi                   4.00',style: TextStyle(fontSize: 20.0), ),
                      //Checkbox(
                       // checkColor: Colors.greenAccent,
                       // activeColor: Colors.red,
                        //value: this.valuefirst,
                        //onChanged: (bool value) {
                         // setState(() {
                          //  this.valuefirst = value;
                         // });
                       // },
                      //),
                    ]),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('                       ',style: TextStyle(fontSize: 12.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('2     Porotta                       7.00',style: TextStyle(fontSize: 20.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('                       ',style: TextStyle(fontSize: 12.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('3     Chicken Biriyani       50.00',style: TextStyle(fontSize: 20.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('                       ',style: TextStyle(fontSize: 12.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('4     Veg Biriyani               40.00',style: TextStyle(fontSize: 20.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('                       ',style: TextStyle(fontSize: 12.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('5     Lime Juice                10.00',style: TextStyle(fontSize: 20.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('                       ',style: TextStyle(fontSize: 12.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('6     Orange Juice            20.00',style: TextStyle(fontSize: 20.0), ),

                    ]
                ),
                Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('                       ',style: TextStyle(fontSize: 12.0), ),

                    ]
                ),
                SizedBox(height: 20.0),
                Container(
                    padding: EdgeInsets.only(top: 5.0, left: 60.0, right: 60.0),
                    height: 30.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(25.0),
                      shadowColor: Colors.redAccent,
                      color: Colors.orange,
                      elevation: 10.0,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen3()),);

                        },
                        child: Center(
                          child: Text(
                            'Back',
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
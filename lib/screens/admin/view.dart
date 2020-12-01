import 'package:flutter/material.dart';
//void main() {
// runApp(testApp());
//}

class apos extends StatelessWidget {
  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: APosPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}





class APosPage extends StatefulWidget {
  @override
  _APosState createState() => _APosState();
}
class _APosState extends State<APosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("USER TABLE"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
          children:<Widget>[
           // Padding(
              //padding: const EdgeInsets.all(8.0),
              //child: Text("User Info",textScaleFactor: 2,style: TextStyle(fontWeight:FontWeight.bold),),
           // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Table(

                // textDirection: TextDirection.rtl,
                // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                // border:TableBorder.all(width: 2.0,color: Colors.red),
                children: [
                  TableRow(
                      children: [
                        Text("  UNAME  ",textScaleFactor: 1.5,),
                        Text(" NAME ",textScaleFactor: 1.5),
                        Text(" DEPT ",textScaleFactor: 1.5),
                       // Text("HOS/DAYSCH",textScaleFactor: 2.0),
                      ]
                  ),
                  TableRow(
                      children: [
                        Text("    ",textScaleFactor: 1.5,),
                        Text("   ",textScaleFactor: 1.5),
                        Text("  ",textScaleFactor: 1.5),
                       // Text("  ",textScaleFactor: 1.5),

                      ]
                  ),
                  TableRow(
                      children: [
                        Text("SCM18CS90",textScaleFactor: 1.5),
                        Text(" Rohit",textScaleFactor: 1.5),
                        Text(" CSE",textScaleFactor: 1.5),
                       // Text("Hostler",textScaleFactor: 1.5),
                      ]
                  ),
                  TableRow(
                      children: [
                        Text("SCM16ES12",textScaleFactor: 1.5),
                        Text(" Sarah",textScaleFactor: 1.5),
                        Text(" EC",textScaleFactor: 1.5),
                        //Text("Day Sch",textScaleFactor: 1.5),
                      ]
                  ),
                  TableRow(
                      children: [
                        Text("SCM19CE10",textScaleFactor: 1.5),
                        Text(" Nicole",textScaleFactor: 1.5),
                        Text(" CE",textScaleFactor: 1.5),
                       // Text("Hostler",textScaleFactor: 1.5),
                      ]
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}

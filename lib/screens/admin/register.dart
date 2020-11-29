import 'package:cantify/screens/admin/home2.dart';
import 'package:flutter/material.dart';



class Register extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController unameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController deptController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController hordsController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange ,
        title: Text("New User"),
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
                      controller: nameController,
                      decoration: InputDecoration(
                          labelText: 'NAME',
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
                      controller: unameController,
                      decoration: InputDecoration(
                          labelText: 'USERNAME',
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
                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          // hintText: 'EMAIL',
                          // hintStyle: ,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.orangeAccent))),
                      obscureText: true),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: deptController,
                      decoration: InputDecoration(
                          labelText: 'DEPARTMENT',
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
                      controller: hordsController,
                      decoration: InputDecoration(
                          labelText: 'HOSTLER/DAY SCHOLAR',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.orangeAccent))),
                      //obscureText: true,
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: roleController,
                      decoration: InputDecoration(
                          labelText: 'ROLE',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.orangeAccent))),
                      //obscureText: true,
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          labelText: 'EMAIL ID',
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
                      controller: numberController,
                      decoration: InputDecoration(
                          labelText: 'MOBILE NO ',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
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
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen2()),);

                            },
                            child: Center(
                              child: Text(
                                'SUBMIT',
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
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen2()),);

                          },
                          child: Center(
                            child: Text('BACK',
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
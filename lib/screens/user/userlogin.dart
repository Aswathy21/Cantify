import 'package:cantify/forgotpsw.dart';
import 'package:cantify/profile.dart';
import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Cantify'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'User Login',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '"Simple way to find your tasty food"',
                      style: TextStyle(fontSize: 18),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                      labelText: 'Username',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orangeAccent)),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                    //forgot password screentt
                  },
                  textColor: Colors.brown,
                  child: Text('Forgot Password?'),
                ),
                Container(
                    padding:
                    EdgeInsets.only(top: 15.0, left: 50.0, right: 50.0),
                    height: 50.0,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orangeAccent,
                      child: Text('LOGIN', style: TextStyle(fontSize: 15)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdRoute()),
                        );
                        print(emailController.text);
                        print(passwordController.text);
                      },
                    )),
              ],
            )));
  }
}
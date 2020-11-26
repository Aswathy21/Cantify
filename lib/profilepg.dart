import 'package:flutter/material.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Cantify"),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Text(
                  'Select',
                  style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),

              Container(
                  padding: EdgeInsets.only(top: 25.0, left: 50.0, right: 50.0),
                  height: 500.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    shadowColor: Colors.orange,
                    color: Colors.orange,
                    elevation: 7.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Text(
                          'Day Scholar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  )),
              //SizedBox(height: 30.0),

              Container(
                padding: EdgeInsets.only(top: 25.0, left: 50.0, right: 50.0),
                height: 500.0,
                color: Colors.transparent,
                child: Material(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.orange,
                  elevation: 7.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Center(
                      child: Text(
                        'Hostler',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name, email, mobile, collegename, password;

  HomePage(
      {Key? key,
      required this.name,
      required this.email,
      required this.mobile,
      required this.collegename,
      required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Funtion showpassword is used to show the password in alert box
    showpassword() {
      showDialog(
          // key import
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Confidential"),
              icon: Icon(Icons.priority_high),
              content: Text("Password - $password"),
              actions: <Widget>[
                ElevatedButton(
                  //color black
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red,
                      backgroundColor: Colors.black),

                  child: Text('OK'),

                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }

    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('Students Info'),
      ),
      body: Form(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Image(
                image: AssetImage("images/logo.png"),
                width: 100.0,
                height: 100.0,
              ),
              ListTile(
                title: Text("Hi, $name ! You Are Successfully Registered"),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text(name),
              ),
              //password list tile

              ListTile(
                leading: Icon(Icons.email),
                title: Text(email),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(mobile),
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text(collegename),
              ),
              ElevatedButton(
                  onPressed: showpassword, child: Text("Show Password")),

              //View password with button List tile
              ListTile(),
            ],
          ),
        ),
      ),
    );
  }
}

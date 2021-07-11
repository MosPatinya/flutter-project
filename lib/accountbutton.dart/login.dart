import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 100, 0, 0),
                child: Text(
                  "WHERE",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(90, 170, 0, 0),
                child: Text(
                  "ARE YOU",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(350, 170, 0, 0),
                child: Text(
                  "!",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                        fontFamily: "Monsterrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                        fontFamily: "Monsterrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  obscureText: true,
                )
              ],
            ),
          ),
          SizedBox(height: 70),
          Container(
            height:40,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              shadowColor: Colors.red.shade400,
              color: Colors.red,
              elevation: 7.0,
              child: GestureDetector(
                onTap:() {},
                child: Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat"
                  ),
                  ),
                ),
                ),
              )
          )
        ],
      ),
    );
  }
}

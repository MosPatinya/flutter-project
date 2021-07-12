import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountbutton.dart/Register.dart';
import 'package:flutter_application_1/pages/Account.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  hintText: "name@example.com",
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
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  hintText: "ตัวเลขหรือตัวอักษรอย่างน้อย 8ตัว",
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
        SizedBox(height: 30),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            color: Colors.red.shade500,
            onPressed: () {  
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Account()),
          );
            },
            child: Row(
              children: [
                SizedBox(width: 120),
                Expanded(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "New to Where are you !",
              style: TextStyle(fontFamily: "Montserrat"),
            ),
            SizedBox(width: 5),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Text("Register",
                    style: TextStyle(
                        color: Colors.red,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline)))
          ],
        )
      ]),
    );
  }
}

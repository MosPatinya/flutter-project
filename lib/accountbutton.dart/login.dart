import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountbutton.dart/profile.dart';
import 'package:flutter_application_1/widgets/nav.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'Register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  Profilelogin profilelogin = Profilelogin();
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("EROR"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
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
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(90, 170, 0, 0),
                        child: Text(
                          "ARE YOU",
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(340, 170, 0, 0),
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "E-mail",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              validator: MultiValidator([
                                EmailValidator(
                                    errorText: "รูปแบบ Emailไม่ถูกต้อง"),
                                RequiredValidator(errorText: "กรุณากรอก Email")
                              ]),
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String email) {
                                profilelogin.email = email;
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              validator: RequiredValidator(
                                  errorText: "กรุณากรอกPassword"),
                              obscureText: true,
                              onSaved: (String password) {
                                profilelogin.password = password;
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                child: Text("LOGIN"),
                                onPressed: () async {
                                  if (formKey.currentState.validate()) {
                                    formKey.currentState.save();
                                    try {
                                      await FirebaseAuth.instance
                                          .signInWithEmailAndPassword(
                                        email: profilelogin.email,
                                        password: profilelogin.password).then((Value){
                                          formKey.currentState.reset();
                                          Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Nav();
                                         }));
                                        });
                                    } on FirebaseAuthException catch (e) {
                                      Fluttertoast.showToast(
                                          msg: e.message,
                                          gravity: ToastGravity.CENTER);
                                    }
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
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
                                      MaterialPageRoute(
                                          builder: (context) => Register()),
                                    );
                                  },
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}

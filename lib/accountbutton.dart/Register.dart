import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountbutton.dart/login.dart';
import 'package:flutter_application_1/accountbutton.dart/profile.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                                child: Text("REGISTER"),
                                onPressed: () async {
                                  if (formKey.currentState.validate()) {
                                    formKey.currentState.save();
                                    try {
                                      await FirebaseAuth.instance
                                          .createUserWithEmailAndPassword(
                                        email: profilelogin.email,
                                        password: profilelogin.password,
                                      ).then((value){
                                        formKey.currentState.reset();
                                      });
                                      Fluttertoast.showToast(
                                          msg: "สร้างบัญชีผู้ใช้เรียบร้อยแล้ว",
                                          gravity: ToastGravity.TOP);
                                      formKey.currentState.reset();
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Login();
                                      }));
                                    } on FirebaseAuthException catch (e) {
                                      print(e.code);
                                      String message;
                                      if (e.code == 'email-already-in-use') {
                                        message = "มีอีเมลนี้ในระบบแล้ว";
                                      } else if (e.code == 'weak-password') {
                                        message =
                                            "รหัสผ่านต้องมีความยาว 6 ตัวข้นไป";
                                      } else {
                                        message = e.message;
                                      }
                                      Fluttertoast.showToast(
                                          msg: message,
                                          gravity: ToastGravity.CENTER);
                                    }
                                  }
                                },
                              ),
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

// Container(
//   padding: EdgeInsets.only(top: 35, left: 20, right: 20),
//   child: Column(
//     children: [
//       TextField(
//         decoration: InputDecoration(
//           hintStyle: TextStyle(color: Colors.grey.shade400),
//           hintText: "name@example.com",
//           labelText: "Email",
//           labelStyle: TextStyle(
//               fontFamily: "Monsterrat",
//               fontWeight: FontWeight.bold,
//               color: Colors.black45),
//           focusedBorder: UnderlineInputBorder(
//             borderSide: BorderSide(color: Colors.red),
//           ),
//         ),
//       ),
//       SizedBox(
//         height: 10,
//       ),
//       TextField(
//         decoration: InputDecoration(
//           hintStyle: TextStyle(color: Colors.grey.shade400),
//           hintText: "ตัวเลขหรือตัวอักษรอย่างน้อย 8ตัว",
//           labelText: "Password",
//           labelStyle: TextStyle(
//               fontFamily: "Monsterrat",
//               fontWeight: FontWeight.bold,
//               color: Colors.black45),
//           focusedBorder: UnderlineInputBorder(
//             borderSide: BorderSide(color: Colors.red),
//           ),
//         ),
//         obscureText: true,
//       ),
//       SizedBox(
//         height: 10,
//       ),
//       TextField(
//         decoration: InputDecoration(
//           hintStyle: TextStyle(color: Colors.grey.shade400),
//           hintText: "ตัวเลขหรือตัวอักษรอย่างน้อย 8ตัว",
//           labelText: "Confirm Password",
//           labelStyle: TextStyle(
//               fontFamily: "Monsterrat",
//               fontWeight: FontWeight.bold,
//               color: Colors.black45),
//           focusedBorder: UnderlineInputBorder(
//             borderSide: BorderSide(color: Colors.red),
//           ),
//         ),
//         obscureText: true,
//       )
//     ],
//   ),
// ),
// SizedBox(height: 30),
// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//   child: FlatButton(
//     shape:
//         RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//     color: Colors.red.shade500,
//     onPressed: () {
//         MaterialPageRoute materialPageRoute= MaterialPageRoute(builder: (context) => Login());
//         Navigator.of(context).push(materialPageRoute);
//     },
//     child: Row(
//       children: [
//         SizedBox(width: 110),
//         Expanded(
//           child: Text(
//             "REGISTER",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: "Montserrat"),
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
//   ]),
//      );
//   }
// }

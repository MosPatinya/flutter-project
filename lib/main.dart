import "package:flutter/material.dart";
import 'package:flutter_application_1/accountbutton.dart/login.dart';
import 'package:flutter_application_1/pages/Account.dart';
import 'package:flutter_application_1/pages/launcher.dart';
import 'package:flutter_application_1/pages/shop.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
      initialRoute: '/',
      routes:<String,WidgetBuilder> {
        Launcher.routeName: (context) => Launcher(),
        '/login':(BuildContext context) => new Login(),
        '/account':(BuildContext context) => new Account(),
        '/shop':(BuildContext context) => new Shop()
      },
      debugShowCheckedModeBanner: false ,
    );
  }
}


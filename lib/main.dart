import "package:flutter/material.dart";
import 'package:flutter_application_1/pages/launcher.dart';


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
      },
      debugShowCheckedModeBanner: false ,
    );
  }
}


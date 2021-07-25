import 'package:flutter/material.dart';
class Showshop extends StatefulWidget {
  Showshop({Key key}) : super(key: key);

  @override
  _ShowshopState createState() => _ShowshopState();
}

class _ShowshopState extends State<Showshop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('FAVORITE')),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              Text('FAVORITE'),
              
         ]),
       ),
    );
  }
}
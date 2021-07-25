import 'package:flutter/material.dart';
class Manageshop extends StatefulWidget {
  @override
  _ManageshopState createState() => _ManageshopState();
}

class _ManageshopState extends State<Manageshop> {
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
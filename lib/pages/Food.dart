import 'package:flutter/material.dart';
class Food extends StatefulWidget {
  Food({Key key}) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('FOOD')),
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
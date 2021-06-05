import 'package:flutter/material.dart';
class Footer extends StatefulWidget {
  Footer({Key key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  String Name = 'Mos';
  int i =0;
  void _changeName(){
    setState(() {
      Name = 'hi';
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('$Name'),
        RaisedButton(onPressed: _changeName,child: Text('click me!'),)
    ]);
  }
}
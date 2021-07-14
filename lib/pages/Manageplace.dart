import 'package:flutter/material.dart';
class Manageplace extends StatefulWidget {
  Manageplace({Key key}) : super(key: key);

  @override
  _ManageplaceState createState() => _ManageplaceState();
}

class _ManageplaceState extends State<Manageplace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('จัดการร้านค้า/สถานที่',
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.red,
      ),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              
         ]),
       ),
    );
  }
}

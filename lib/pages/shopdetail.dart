import 'package:flutter/material.dart';
class Shopdetail extends StatefulWidget {
  Shopdetail({Key key}) : super(key: key);

  @override
  _ShopdetailState createState() => _ShopdetailState();
}

class _ShopdetailState extends State<Shopdetail> {
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
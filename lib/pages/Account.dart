import 'package:flutter/material.dart';
class Account extends StatefulWidget {
  Account({Key key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children:<Widget> [
             SizedBox(
               height: 80,
             ),
             CircleAvatar(
               backgroundImage: AssetImage('assets/images/acc.png'),
               backgroundColor: Colors.blue,
               radius : 50.0
             ),
             Padding(
               padding: EdgeInsets.symmetric(vertical:15,horizontal: 15),
               ),
           ],
         ),
           ),
         );
  }
}
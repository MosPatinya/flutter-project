import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Profile.dart';

class Edited_user extends StatefulWidget {
  @override
  _Edited_userState createState() => _Edited_userState();
}

class _Edited_userState extends State<Edited_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Center(
          child: Column(children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Profile(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextField(decoration: InputDecoration(labelText: 'Full Name')),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(decoration: InputDecoration(labelText: 'Email')),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(decoration: InputDecoration(labelText: 'Phone')),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(decoration: InputDecoration(labelText: 'Confirm Password'),
                  obscureText: true,
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/acc.png'),
                backgroundColor: Colors.white70,
                radius: 55.0,
              )),
        ],
      ),
    );
  }
}
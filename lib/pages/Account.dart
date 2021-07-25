import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountbutton.dart/login.dart';
import 'package:flutter_application_1/pages/Edited_user.dart';
import 'package:flutter_application_1/pages/shop.dart';

class Account extends StatefulWidget {
  Account({Key key}) : super(key: key);

  _AccountState createState() => _AccountState();
}
class _AccountState extends State<Account> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Profile(),
            SizedBox(
              height: 20,
            ),
            ProfileMenu(),
            ProfileMenu4(),
            ProfileMenu2(),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.grey[200],
        onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        },
        child: Row(
          children: [
            Icon(Icons.login),
            SizedBox(width: 20),
            Expanded(
              child:
                  Text("Login", style: Theme.of(context).textTheme.bodyText1),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
class ProfileMenu4 extends StatelessWidget {
  const ProfileMenu4({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.grey[200],
        onPressed: () {
           Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Edited_user()),
          );
        },
        child: Row(
          children: [
            Icon(Icons.account_box_sharp),
            SizedBox(width: 20),
            Expanded(
              child:
                  Text("แก้ไขข้อมูล", 
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}

class ProfileMenu2 extends StatelessWidget {
  const ProfileMenu2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.grey[200],
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Shop()),
          );
        },
        child: Row(
          children: [
            Icon(Icons.local_grocery_store),
            SizedBox(width: 20),
            Expanded(
              child: Text("ผู้ประกอบการ",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}



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


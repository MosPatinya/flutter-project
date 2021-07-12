import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountbutton.dart/login.dart';


class Shop extends StatefulWidget {
  Shop({Key key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
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
            ProfileMenu1(),
            ProfileMenu2(),
            ProfileMenu3(),
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
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.account_box),
            SizedBox(width: 20),
            Expanded(
              child:
                  Text("แก้ไขข้อมูล", style: Theme.of(context).textTheme.bodyText1),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}

class ProfileMenu1 extends StatelessWidget {
  const ProfileMenu1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.grey[200],
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.cancel),
            SizedBox(width: 20),
            Expanded(
              child: Text("ล้างข้อมูลที่ชื่นชอบ",
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

class ProfileMenu3 extends StatelessWidget {
  const ProfileMenu3({
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
            Icon(Icons.logout),
            SizedBox(width: 20),
            Expanded(
              child: Text("ออกจากระบบ",
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
              backgroundColor: Colors.black,
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

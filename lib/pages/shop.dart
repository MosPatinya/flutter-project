import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Editedplace.dart';
import 'package:flutter_application_1/pages/addshop.dart';
import 'package:flutter_application_1/pages/shopdetail.dart';
import 'package:flutter_application_1/widgets/Profile.dart';

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
            ProfileMenu2(),
            ProfileMenu3(),
            ProfileMenu4(),
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
            MaterialPageRoute(builder: (context) => Shopdetail()),
          );
        },
        child: Row(
          children: [
            Icon(Icons.local_grocery_store),
            SizedBox(width: 20),
            Expanded(
              child: Text("จัดการร้านค้า/สถานที่",
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
            MaterialPageRoute(builder: (context) => Addshop()),
          );
        },
        child: Row(
          children: [
            Icon(Icons.add),
            SizedBox(width: 20),
            Expanded(
              child: Text("เพิ่มร้านค้า/สถานที่",
                  style: Theme.of(context).textTheme.bodyText1),
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
            MaterialPageRoute(builder: (context) => Editedplace()),
            );
        },
        child: Row(
          children: [
            Icon(Icons.settings_applications_outlined),
            SizedBox(width: 20),
            Expanded(
              child: Text("แก้ไขลบข้อมูลร้านค้า/สถานที่",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}


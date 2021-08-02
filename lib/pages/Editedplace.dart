import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/product_lists.dart';
import 'package:flutter_application_1/widgets/product_popup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Editedplace());
}

class Editedplace extends StatefulWidget {
  @override
  _EditedplaceState createState() => _EditedplaceState();
}

class _EditedplaceState extends State<Editedplace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แก้ไขข้อมูลร้านค้า/สถานที่'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Color(0x00ffffff),
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return ProductPopup();
                  });
            },
          ),
        ],
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: ProductLists(),
      )
    );
  }
}


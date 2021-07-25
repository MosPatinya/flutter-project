import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/product_lists.dart';
import 'package:flutter_application_1/widgets/product_popup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Shopdetail());
}

class Shopdetail extends StatefulWidget {
  @override
  _ShopdetailState createState() => _ShopdetailState();
}

class _ShopdetailState extends State<Shopdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAVORITE'),
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
      ),
      body: Container(
        child: ProductLists(),
      )
    );
  }
}

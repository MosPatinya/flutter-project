import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  Favorite({Key key}) : super(key: key);
  @override
  FavoriteState createState() => FavoriteState();
}

class FavoriteState extends State<Favorite> {
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(Favorite());
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference products =
        FirebaseFirestore.instance.collection('products');
    return Scaffold(
      appBar: AppBar(
        title: Text('FAVORITE'),
        backgroundColor: Colors.red,
      ),
      body: ShopF(products: products),
    );
  }
}

class ShopF extends StatelessWidget {
  const ShopF({
    Key key,
    @required this.products,
  }) : super(key: key);

  final CollectionReference<Object> products;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: StreamBuilder(
            stream: products.orderBy('productName').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: Text('Loading'),
                );
              }
              return ListView(
                children: snapshot.data.docs.map((product) {
                  return SizedBox(
                    height: 120,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  product['productName'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 10,),
                                Text(product['category'])
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 170,
                                  width: 160,
                                  child:
                                      Image.asset("assets/images/Capture.PNG")),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            }));
  }
}

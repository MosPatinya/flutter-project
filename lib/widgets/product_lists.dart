import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/service/database.dart';
import 'package:flutter_application_1/widgets/product_item.dart';
class ProductLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Database db = Database.instance;
    Stream<List<ProductModel>> stream = db.getAllProductStream();
    return Container(
      padding: EdgeInsets.only(top:5),
      child: StreamBuilder<List<ProductModel>>(
        stream: stream,
        builder: (context, snapshot){
          if (snapshot.hasData){
            if (snapshot.data.length == 0) {
              return Center(
                child:Text('ยังไม่มีข้อมูล'));
            }
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Dismissible(key: UniqueKey(),
                 child: ProductItem(product:snapshot.data[index]),
                 onDismissed: (directory) {
                   if (directory == DismissDirection.endToStart) {
                     db.deleteProduct(product:snapshot.data[index]);
                   }
                 },
                 background: Container(color:Colors.red),
                 direction: DismissDirection.endToStart,
                 );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        }
      )
    );
  }
  
}
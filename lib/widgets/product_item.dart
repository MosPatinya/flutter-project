import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/widgets/product_popup.dart';
const kLeadingText = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w300,
  color: Colors.blue,
);
const KtrailingText = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.black87,
);
class ProductItem extends StatelessWidget {
  final ProductModel product;
  ProductItem({this.product});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(backgroundColor: Color(0x00ffffff),
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return ProductPopup(
            product: product,
          );
        },
        );
      },
      child: ListTile(
        leading: Text(
          product.productName,
          style: kLeadingText,
        ),
        title: Text(
          product.price.toStringAsFixed(2),
          style: KtrailingText,
          textAlign: TextAlign.right,
        ),
        trailing: Icon(Icons.chevron_right),
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/widgets/product_popup.dart';

const kLeadingText = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w300,
  color: Colors.blueAccent,
);
const KtrailingText = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.redAccent,
);

class ProductItem extends StatelessWidget {
  final ProductModel product;
  ProductItem({this.product});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Color(0x00ffffff),
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return ProductPopup(
              product: product,
            );
          },
        );
      },
      child: SizedBox(
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
                      product.productName,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(product.category)
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                      height: 170,
                      width: 160,
                      child: Image.asset("assets/images/Capture.PNG")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

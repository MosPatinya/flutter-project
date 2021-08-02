import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/service/database.dart';

class ProductForm extends StatefulWidget {
  final ProductModel product;
  ProductForm({this.product});
  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  Database db = Database.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController name1Controller = TextEditingController();
  TextEditingController name2Controller = TextEditingController();
  TextEditingController name3Controller = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.product != null) {
      nameController.text = widget.product.productName;
      name1Controller.text = widget.product.name1;
      name2Controller.text = widget.product.name2;
      name3Controller.text = widget.product.name3;
      categoryController.text = widget.product.category;
      priceController.text = widget.product.price.toString();
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    name1Controller.dispose();
    name2Controller.dispose();
    name3Controller.dispose();
    categoryController.dispose();
    priceController.dispose();
    super.dispose();
  }

  Widget _showImage() {
    return Text("Image Here");
  }

  _getLocalImage() {}

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.product != null
                ? 'แก้ไขร้าน ${widget.product.productName}'
                : 'เพิ่มร้านค้า/สถานที่',style: TextStyle(fontSize:30),),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Form(
                  child: Column(
                children: <Widget>[
                  _showImage(),
                  SizedBox(height: 16),
                  Text("Create Food",textAlign: TextAlign.center,style: TextStyle(fontSize:30),),
                  SizedBox(height:16),
                  ButtonTheme(
                    child: RaisedButton(
                    onPressed: (){},
                    child: Text('Add Image',style: TextStyle(color: Colors.white),),))
                ],
              )),
            ),
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'ชื่อร้านค้า'),
              
            ),
            TextFormField(
              controller: name1Controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'ชื่อแฝง1'),
            ),
            TextField(
              controller: name2Controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'ชื่อแฝง2'),
            ),
            TextField(
              controller: name3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'ชื่อแฝง3'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'English Name'),
            ),
            TextField(
              controller: categoryController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'หมวดหมู่'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'ช่วงราคาสินค้า'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'ประเภท'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'เบอร์โทรศัพท์'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'เวลาเปิด'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'เวลาปิด'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'ช่วงราคา'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Website'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Facebook'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Instagram'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Line'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _showOkButton(),
                SizedBox(
                  width: 10,
                ),
                _showCancelButton(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _showOkButton() {
    return RaisedButton(
      onPressed: () async {
        String newProductId =
            'PD${DateTime.now().millisecondsSinceEpoch.toString()}';
        await db.setProduct(
          product: ProductModel(
            id: widget.product == null ? newProductId : widget.product.id,
            productName: nameController.text,
            name1: name1Controller.text,
            name2: name2Controller.text,
            name3: name3Controller.text,
            category: categoryController.text,
            price: double.tryParse(priceController.text) ?? 0,
          ),
        );
        nameController.clear();
        name1Controller.clear();
        name2Controller.clear();
        name3Controller.clear();
        categoryController.clear();
        priceController.clear();
        Navigator.of(context).pop();
      },
      child: Text(widget.product == null ? 'เพิ่ม' : 'แก้ไข'),
    );
  }

  Widget _showCancelButton(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text('ปิด'),
    );
  }
}

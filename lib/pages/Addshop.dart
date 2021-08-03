// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/model/user.dart';
// import 'package:form_field_validator/form_field_validator.dart';

// class Addshop extends StatefulWidget {
//   @override
//   _AddshopState createState() => _AddshopState();
// }

// class _AddshopState extends State<Addshop> {
//   final formKey = GlobalKey<FormState>();
//   User myUser = User();
//   //เตรียม firebase
//   final Future<FirebaseApp> firebase = Firebase.initializeApp();
//   CollectionReference _userCollection =
//       FirebaseFirestore.instance.collection("user");
//       var selectedType;
//   List<String> _catago = <String>[
//     'ร้านอาหาร',
//     'ร้านกาแฟ',
//     'ร้านเครื่องเขียน',
//     'ร้านเสริมสวย',
//     'คลินิก/ขายยา',
//     'ร้านทั่วไป',
//     'สถานที่ในRMUTT',
//     'สถานที่ทั่วไป',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: firebase,
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return Scaffold(
//             appBar: AppBar(
//               title: Text("Eror"),
//             ),
//             body: Center(
//               child: Text("${snapshot.error}"),
//             ),
//           );
//         }
//         if (snapshot.connectionState == ConnectionState.done) {
//           return Scaffold(
//             appBar: AppBar(
//               title: Text('เพิ่มร้านค้า/สถานที่',
//                   style: TextStyle(
//                     color: Colors.white,
//                   )),
//               backgroundColor: Colors.red,
//             ),
//             body: SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.all(10),
//                 child: Form(
//                   key: formKey,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("ชื่อ"),
//                       TextFormField(
//                         validator:
//                             RequiredValidator(errorText: " *กรุณากรอกชื่อ"),
//                         onSaved: (String name) {
//                           myUser.name = name;
//                         },
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("ชื่อแฝง1"),
//                       TextFormField(onSaved: (String name1) {
//                         myUser.name1 = name1;
//                       }),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("ชื่อแฝง2"),
//                       TextFormField(onSaved: (String name2) {
//                         myUser.name2 = name2;
//                       }),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("ชื่อแฝง3"),
//                       TextFormField(onSaved: (String name3) {
//                         myUser.name3 = name3;
//                       }),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("English"),
//                       TextFormField(onSaved: (String ename) {
//                         myUser.ename = ename;
//                       }),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("ประเภท"),
//                       TextFormField(
//                           validator:
//                               RequiredValidator(errorText: " *กรุณากรอกประเภท"),
//                           onSaved: (String type) {
//                             myUser.type = type;
//                           }),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("เบอร์โทรศัพท์"),
//                       TextFormField(
//                         validator: RequiredValidator(
//                             errorText: " *กรุณากรอกเบอร์โทรศัพท์"),
//                         onSaved: (String phone) {
//                           myUser.phone = phone;
//                         },
//                         keyboardType: TextInputType.phone,
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("เวลาเปิด"),
//                       TextFormField(
//                         validator: RequiredValidator(
//                             errorText: " *กรุณากรอกเวลาเปิด - ปิด"),
//                         onSaved: (String timeopen) {
//                           myUser.timeopen = timeopen;
//                         },
//                         keyboardType: TextInputType.datetime,
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("เวลาปิด"),
//                       TextFormField(
//                         validator: RequiredValidator(
//                             errorText: " *กรุณากรอกเวลาเปิด - ปิด"),
//                         onSaved: (String timeclose) {
//                           myUser.timeclose = timeclose;
//                         },
//                         keyboardType: TextInputType.datetime,
//                       ),
//                       Text("ช่วงราคา"),
//                       TextFormField(onSaved: (String price) {
//                         myUser.price = price;
//                       }),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("เว็บไซต์"),
//                       TextFormField(onSaved: (String web) {
//                         myUser.web = web;
//                       }),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("Facebook"),
//                       TextFormField(onSaved: (String facebook) {
//                         myUser.facebook = facebook;
//                       }),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                               child: RaisedButton(
//                             child: Text("SAVE"),
//                             onPressed: () async {
//                               if (formKey.currentState.validate()) {
//                                 formKey.currentState.save();
//                                 await _userCollection.add({
//                                   "name": myUser.name,
//                                   "name1": myUser.name1,
//                                   "name2": myUser.name2,
//                                   "name3": myUser.name3,
//                                   "ename": myUser.ename,
//                                   "cata": myUser.cata,
//                                   "type": myUser.type,
//                                   "phone": myUser.phone,
//                                   "timeopen": myUser.timeopen,
//                                   "timeclose": myUser.timeclose,
//                                   "price": myUser.price,
//                                   "web": myUser.web,
//                                   "facebook": myUser.facebook,
//                                 });
//                                 formKey.currentState.reset();
//                                 Navigator.pop(context);
//                               }
//                             },
//                           ))
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }
//         return Scaffold(
//           body: Center(
//             child: CircularProgressIndicator(),
//           ),
//         );
//       },
//     );
//   }
// }

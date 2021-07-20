import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Manageplace extends StatefulWidget {
  Manageplace({Key key}) : super(key: key);

  @override
  _ManageplaceState createState() => _ManageplaceState();
}

class _ManageplaceState extends State<Manageplace> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('จัดการร้านค้า/สถานที่',
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("user").snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),);
            }
            return ListView(
              children: snapshot.data.docs.map((document){
                return Card(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FittedBox(child: Text(document["cata"]),
                        ),
                      ),
                      title: Text(document["name"]),
                      subtitle: Text(document["cata"]),
                      trailing: IconButton(icon: Icon(Icons.delete,color: Colors.red,), 
                      onPressed: ()  {
                        
                      
                      },
                    ),
                  ),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
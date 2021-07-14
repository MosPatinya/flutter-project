import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            carousel(),
            searchBox(),
            SizedBox(
              height: 20,
            ),
          ],
        )));
  }

  Widget mapp() {
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Capture.PNG'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBox() {
    return Padding(
      padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 0,
          ),
          Container(
            height: 45,
            padding: EdgeInsets.only(left: 100, right: 3, top: 3, bottom: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(blurRadius: 10)],
              color: Colors.white,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: "ค้นหาร้านค้าและสถานที่",
                        border: InputBorder.none),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minWidth: 50,
                  elevation: 0,
                  color: Colors.white,
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget carousel() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 1.99,
                viewportFraction: 0.8,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  print("index");
                }),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Image.asset('assets/images/computerim1.PNG'),
                  );
                },
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}

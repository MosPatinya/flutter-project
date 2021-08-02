import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          children: <Widget>[
            Stack(
              children: [
                carousel(),
                // searchBox(),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: GridView.count(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  children: <Widget>[
                    CategoryCard(
                      title: "ร้านอาหาร",
                      image: "assets/images/food-icon2.png",
                      color: Colors.greenAccent,
                      press: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => ),
                        // );
                      },
                    ),
                    CategoryCard(
                      title: "ร้านกาแฟ",
                      image: "assets/images/cofee-icon1.png",
                      color: Colors.blueAccent,
                      press: () {},
                    ),
                    CategoryCard(
                      title: "ร้านเครื่องเขียน",
                      image: "assets/images/pen-icon.png",
                      color: Colors.redAccent,
                      press: () {},
                    ),
                    CategoryCard(
                      title: "ร้านเสริมสวย",
                      image: "assets/images/salon-icon1.png",
                      color: Colors.yellowAccent,
                      press: () {},
                    ),
                    CategoryCard(
                      title: "คลินิก/ขายยา",
                      image: "assets/images/clenic-icon1.png",
                      color: Colors.pinkAccent,
                      press: () {},
                    ),
                    CategoryCard(
                      title: "ร้านทั่วไป",
                      image: "assets/images/store-icon1.png",
                      color: Colors.purpleAccent,
                      press: () {},
                    ),
                    CategoryCard(
                      title: "สถานที่ในRMUTT",
                      image: "assets/images/college-icon1.png",
                      color: Colors.orangeAccent,
                      press: () {},
                    ),
                    CategoryCard(
                      title: "สถานที่ทั่วไป",
                      image: "assets/images/park-icon1.png",
                      color: Colors.lightBlueAccent,
                      press: () {},
                    ),
                  ],
                ),
              ),
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
      padding: EdgeInsets.only(top: 170, left: 10, right: 10, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
                  minWidth: 0,
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
                    margin: EdgeInsets.symmetric(horizontal: 0),
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

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  final Function press;
  const CategoryCard({
    Key key,
    this.image,
    this.title,
    this.color,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(image),
                      Spacer(),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.title.copyWith(
                              fontSize: 13,fontWeight: FontWeight.w700,fontStyle: FontStyle.normal,
                            ),
                      )
                    ],
                  ),
                )),
          )),
    );
  }
}

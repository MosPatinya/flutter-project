import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/iconmenu.dart';

class IconmenuViewModel {
  List<IconMenu> getIconMenu(){
    return[
      IconMenu(
        image: "https://cdn3.iconfinder.com/data/icons/sympletts-free-sampler/128/coffee-cup-2-512.png",
        title: 'ร้านกาแฟ',
        //color:Colors.brown
      ),
      IconMenu(
        image: 'https://cdn3.iconfinder.com/data/icons/street-food-and-food-trucker-1/64/rice-dish-food-cook-menu-256.png',
        title: 'ร้านอาหาร',
        //color:Colors.red
      ),
      IconMenu(
        image: 'https://cdn4.iconfinder.com/data/icons/multimedia-75/512/multimedia-28-256.png',
        title: 'ร้านทั่วไป',
        color:Colors.yellow
      ),
      IconMenu(
        image: 'https://cdn1.iconfinder.com/data/icons/hospital-52/32/11-256.png',
        title: 'คลินิค/ขายยา',
        color:Colors.pink
      ),
      IconMenu(
        image: 'https://cdn1.iconfinder.com/data/icons/electronics-outline-24/24/hair_dryer_blow_dryer_hair_heater_hair_styling_salon_electricals-256.png',
        title: 'ร้านเสริมสวย',
        //color:Colors.red
      ),
      IconMenu(
        image: 'https://cdn2.iconfinder.com/data/icons/airport-solid-prepare-for-take-off/512/car_parking-256.png',
        title: 'สถานที่ทั่วไป',
        color:Colors.orange
      ),
      IconMenu(
        image: 'https://cdn4.iconfinder.com/data/icons/education-free/512/education-school-learn-study-04-256.png',
        title: 'สถานที่ในRMUTT',
        color:Colors.blue
      ),
      IconMenu(
        image: 'https://cdn4.iconfinder.com/data/icons/48-bubbles/48/15.Pencil-256.png',
        title: 'ร้านเครื่องเขียน',
        color:Colors.brown
      ),
      
    ];
  }
}
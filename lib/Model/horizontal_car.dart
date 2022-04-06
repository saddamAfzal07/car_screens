import 'package:flutter/material.dart';

class HorizontalCar {
  final String? img;
  final String? category;
  final String? des;
  Color bgcolors;
  Color textcolor;
  Color dexcolor;

  HorizontalCar({
    required this.img,
    required this.category,
    required this.des,
    required this.bgcolors,
    required this.textcolor,
    required this.dexcolor,
  });
}

List<HorizontalCar> horizontalCars = [
  HorizontalCar(
    img: "assets/images/horicar1.png",
    category: "Standard",
    des: "56",
    bgcolors: Color(0xFF057A55),
    textcolor: Colors.white,
    dexcolor: Colors.white,
  ),
  HorizontalCar(
    img: "assets/images/horicar2.png",
    category: "Prestige",
    des: "22",
    bgcolors: Colors.white,
    textcolor: Color(0xFF212121),
    dexcolor: Color(0xFF7D8EA3),
  ),
  HorizontalCar(
    img: "assets/images/horicar3.png",
    category: "Suv",
    des: "11",
    bgcolors: Colors.white,
    textcolor: Color(0xFF212121),
    dexcolor: Color(0xFF7D8EA3),
  ),
  HorizontalCar(
    img: "assets/images/horicar1.png",
    category: "Prestige",
    des: "33",
    bgcolors: Colors.white,
    textcolor: Color(0xFF212121),
    dexcolor: Color(0xFF7D8EA3),
  ),
  HorizontalCar(
    img: "assets/images/horicar3.png",
    category: "Suv",
    des: "11",
    bgcolors: Colors.white,
    textcolor: Color(0xFF212121),
    dexcolor: Color(0xFF7D8EA3),
  ),
];

import 'package:flutter/material.dart';

class Festival{
  late String festival_name,text,image;
  late Color currentcolor;
  late List<String>img;

  Festival({required this.text,required this.img,required this.image,required this.currentcolor,required this.festival_name});

  factory Festival.fromMap(Map m1)
  {
    return Festival(text: m1['Text'], img: List.from(m1['image']), image: m1['Images'], currentcolor: m1['Color'], festival_name: m1['Festival name']);
  }
}
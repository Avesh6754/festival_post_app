import 'package:festival_post_app/screen/View/Categorypage/category.dart';
import 'package:festival_post_app/screen/View/Editingpage/editingpage.dart';
import 'package:festival_post_app/screen/View/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


List Colorlist = [
  Colors.white,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.black,
  Colors.grey,
  Colors.yellowAccent,
  Colors.cyan,
  Colors.orange,
  Colors.deepPurple,
  Colors.pinkAccent
];
int textcolorindex = 0;
List textfamily = [
  GoogleFonts.nunito,
  GoogleFonts.playfairDisplay,
  GoogleFonts.roboto,
  GoogleFonts.lato,
  GoogleFonts.kanit,
  GoogleFonts.montserrat,
  GoogleFonts.oswald,
  GoogleFonts.raleway,
  GoogleFonts.quicksand,
  GoogleFonts.poppins,
  GoogleFonts.workbench,
];
List gradient_List = [
  [Color(0xffB3C8CF), Color(0xffBED7DC), Color(0xffF1EEDC), Color(0xffE5DDC5)],
  [Color(0xff49243E), Color(0xff704264), Color(0xffBB8493), Color(0xffDBAFA0)],
  [Color(0xffD20062), Color(0xffD6589F), Color(0xffD895DA), Color(0xffC4E4FF)],
  [Color(0xffFFAF45), Color(0xffFB6D48), Color(0xffD74B76), Color(0xff673F69)],
  [Color(0xff401F71), Color(0xff824D74), Color(0xffBE7B72), Color(0xffFDAF7B)],

];

List<Widget> screenlist=[
  Homescreen(),
  Editingpage(),
  Category(),

];

var myindex=0;
bool isGrid=false;

var selectedindex=0;
var currentImage='0';
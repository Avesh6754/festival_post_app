
import 'package:festival_post_app/screen/View/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:festival_post_app/screen/Splashscreen/splashscreen.dart';


Map<String,Widget Function(BuildContext context)>routes={
  '/':(context)=>Splashscreen(),
  '/home':(context)=>Homescreen(),
};
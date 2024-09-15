
import 'package:festival_post_app/screen/View/Categorypage/category.dart';
import 'package:festival_post_app/screen/View/Editingpage/editingpage.dart';
import 'package:festival_post_app/screen/View/Favouritepage/favourite.dart';
import 'package:festival_post_app/screen/View/Historypage/history.dart';
import 'package:flutter/material.dart';
import 'package:festival_post_app/screen/Splashscreen/splashscreen.dart';

import '../screen/View/component/component.dart';


Map<String,Widget Function(BuildContext context)>routes={
  '/':(context)=>Splashscreen(),
  '/bottom':(context)=>Bottom(),
  '/cat':(context)=>Category(),
  '/edit':(context)=>Editingpage(),
  '/fav':(context)=>Favourite(),
  '/his':(context)=>History(),
};
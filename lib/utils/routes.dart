
import 'package:festival_post_app/screen/View/Categorypage/category.dart';
import 'package:festival_post_app/screen/View/Editingpage/editingpage.dart';
import 'package:flutter/material.dart';
import 'package:festival_post_app/screen/Splashscreen/splashscreen.dart';

import '../screen/View/component/component.dart';


Map<String,Widget Function(BuildContext context)>routes={
  '/':(context)=>Splashscreen(),
  '/bottom':(context)=>Bottom(),
  '/edit':(context)=>Editingpage(),
  '/cat':(context)=>Category(),


};
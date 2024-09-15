import 'package:festival_post_app/model/modellist.dart';
import 'package:flutter/material.dart';

import '../../../model/modelclass.dart';
import '../../../utils/color.dart';
import '../../../utils/global.dart';
import '../component/gridview.dart';
import '../component/listview.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  void initState() {
    // TODO: implement initState
    super.initState();
    myfestivak = festivalList.map((e) => Festival.fromMap(e)).toList();
  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: back,
      appBar: AppBar(
        backgroundColor: search,
        title: Text(
          'Category',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 2,
         shadowColor: Colors.black12,

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.circle_notifications,
              color: button,
              size: 30,
            ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  isGrid = !isGrid;
                });
              },
              icon: Icon(
                (isGrid) ? Icons.grid_view_sharp: Icons.list,
                color: button,
                size: (isGrid) ? 25 : 30,
              ))
        ],
        
      ),
      body:  (isGrid) ? GridViewMethod() : ListViewMethod(),
    );
  }
}

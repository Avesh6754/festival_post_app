import 'package:festival_post_app/model/modelclass.dart';
import 'package:festival_post_app/model/modellist.dart';
import 'package:festival_post_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override

  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfestivak=festivalList.map((e)=>Festival.fromMap(e)).toList();
  }
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:back,
      appBar: AppBar(
        backgroundColor:back,
        title: Text('Fley Maker',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.circle_notifications,color: button,size: 30,),),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.grid_view_sharp,color: button,size: 30,),)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
cursorColor: button,
              decoration: InputDecoration(
                border: OutlineInputBorder(),

                hintText: 'Search here...',hintStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: button ,width: 1.5),
                  borderRadius: BorderRadius.circular(15)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
            SizedBox(height: h*0.040,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(myfestivak.length,(index)=>Container(
                    height: h*0.200,
                    width: w*0.681,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                        ,color: Colors.white,
                        image: DecorationImage(image: AssetImage('${myfestivak[index].image},'))
                    ),
                  ),),

                  SizedBox(width: w*0.040,),
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}

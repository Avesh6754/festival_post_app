
import 'package:festival_post_app/model/modelclass.dart';
import 'package:festival_post_app/model/modellist.dart';
import 'package:festival_post_app/screen/View/Editingpage/editingpage.dart';
import 'package:festival_post_app/screen/View/component/component.dart';
import 'package:festival_post_app/utils/color.dart';
import 'package:festival_post_app/utils/global.dart';
import 'package:flutter/cupertino.dart';
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
    myfestivak = festivalList.map((e) => Festival.fromMap(e)).toList();
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: back,
      appBar: AppBar(
        backgroundColor: back,
        title: Text(
          'Fley Maker',
          style: TextStyle(color: Colors.white),
        ),
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
            onPressed: () {},
            icon: Icon(
              Icons.grid_view_sharp,
              color: button,
              size: 30,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
             
                decoration: BoxDecoration(
                  color: search,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextField(
                  cursorColor: button,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search,color: Colors.white,),
                    border: OutlineInputBorder(),
                      hintText: 'Search here...',
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: button, width: 1.5),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white60, width: 1),
                          borderRadius: BorderRadius.circular(15)
                      )),
                ),
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  Text(
                    'SeeAll',
                    style: TextStyle(
                        color: button,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Editingpage(),));
                          selectedindex=0;
                          selectedindex=index;
                          currentImage=myfestivak[selectedindex].img[0];
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5),
                          child: AnimatedGradientBorder(
                            gradientColors: [
                              Colors.tealAccent,
                              Colors.teal,
                              Colors.blue
                            ],
                            borderRadius: BorderRadius.circular(999),
                            glowSize: 0,
                            borderSize: 2.5,
                            child: CircleAvatar(
                                radius: w / 5.7,
                                backgroundImage:
                                    AssetImage('${myfestivak[index].image}')),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.020,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special Post',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  Text(
                    'SeeAll',
                    style: TextStyle(
                        color: button,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      7,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/edit');
                          selectedindex=0;
                          selectedindex=index+2;
                          currentImage=myfestivak[selectedindex].img[0];
                        },
                        child: Container(
                          height: h * 0.250,
                          width: w * 0.400,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white60,
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  offset: Offset(1, 1)
                                )
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                      '${myfestivak[index+2].image}'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'More Post',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: w / 18),
                  ),
                  Text(
                    'SeeAll',
                    style: TextStyle(
                        color: button,
                        fontWeight: FontWeight.w500,
                        fontSize: w / 30),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                     4,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/edit');
                          selectedindex=0;
                          selectedindex=index+5;
                          currentImage=myfestivak[selectedindex].img[0];
                        },
                        child: Container(
                          height: h * 0.250,
                          width: w * 0.400,
                          margin: EdgeInsets.only(left: 10, right: 10,top: 8,bottom: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white60,
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    offset: Offset(1, 1)
                                )
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                      '${myfestivak[index+5].image}'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

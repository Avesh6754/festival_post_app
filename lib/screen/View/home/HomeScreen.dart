import 'package:festival_post_app/model/modelclass.dart';
import 'package:festival_post_app/model/modellist.dart';
import 'package:festival_post_app/utils/color.dart';
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
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                cursorColor: button,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Search here...',
                    hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: button, width: 1.5),
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60,width: 1),
                        borderRadius: BorderRadius.circular(15),
                    )),
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
                      myfestivak.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        child: AnimatedGradientBorder(
                          gradientColors: [
                            Colors.tealAccent,
                            Colors.teal,
                            Colors.blue
                          ],
                          borderRadius: BorderRadius.circular(999),
                          glowSize: 0,
                          borderSize: 3,
                          child: CircleAvatar(
                              radius: w / 5.7,
                              backgroundImage:
                                  AssetImage('${myfestivak[index].image}')),
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
                    'Diwali Post',
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
                      myfestivak[0].img.length,
                      (index) => Stack(
                        children: [
                          Container(
                            height: h * 0.250,
                            width: w * 0.400,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image:
                                        AssetImage('${myfestivak[0].img[index]}'),
                                    fit: BoxFit.cover)),
                            alignment: Alignment.topRight,
                            child: IconButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black38)),onPressed: () {

                            }, icon: Icon(Icons.bookmark_add_outlined,color: Colors.white,)),
                          )
                        ],
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
                      myfestivak.length,
                          (index) => Stack(
                        children: [
                          Container(
                            height: h * 0.250,
                            width: w * 0.400,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image:
                                    AssetImage('${myfestivak[index].image}'),
                                    fit: BoxFit.cover)),
                            alignment: Alignment.topRight,
                            child: IconButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black38)),onPressed: () {

                            }, icon: Icon(Icons.bookmark_add_outlined,color: Colors.white,)),
                          )
                        ],
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

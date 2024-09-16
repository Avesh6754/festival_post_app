import 'package:festival_post_app/model/modellist.dart';
import 'package:festival_post_app/utils/global.dart';
import 'package:flutter/material.dart';

import '../../../utils/color.dart';

class Editingpage extends StatefulWidget {
  const Editingpage({super.key});

  @override
  State<Editingpage> createState() => _EditingpageState();
}

class _EditingpageState extends State<Editingpage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: search,
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: back,
        title: Text(
          'Edit',
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
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: h * 0.450,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(currentImage),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [],
                ),
              ),
              SizedBox(height: w*0.100,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(myfestivak[selectedindex].img.length, (index) => GestureDetector(
              onTap: () {
                setState(() {
                  currentImage = myfestivak[selectedindex].img[index];
                });
              },
              child: Card(child: Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white60,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(1, 1)
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('${myfestivak[selectedindex].img[index]}'),fit: BoxFit.cover),),
                ),
              ),),
            ),),
        ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal, width: 2)),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        showDialog(context: context, builder: (context) => AlertDialog(
                          backgroundColor: Colors.red,
                        ),);
                      });
                    }, icon: Icon(Icons.text_fields_outlined,color: Colors.teal,size: 30,)),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.teal, width: 2),
                ),
                child:
                    IconButton(onPressed: () {}, icon: Icon(Icons.image_outlined,color: Colors.teal,size: 30)),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal, width: 2)),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.grid_view,color: Colors.teal,size: 30)),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal, width: 2)),
                child:
                    IconButton(onPressed: () {}, icon: Icon(Icons.text_decrease,color: Colors.teal,size: 30)),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal, width: 2)),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.color_lens_outlined,color: Colors.teal,size: 30)),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal, width: 2)),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.font_download_outlined,color: Colors.teal,size: 30)),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal, width: 2)),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.format_align_center_outlined,color: Colors.teal,size: 30)),
              ),
              SizedBox(width: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

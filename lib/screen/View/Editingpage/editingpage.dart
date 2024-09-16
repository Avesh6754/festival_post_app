import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:festival_post_app/model/modellist.dart';
import 'package:festival_post_app/screen/View/component/component.dart';
import 'package:festival_post_app/utils/global.dart';
import 'package:festival_post_app/utils/global.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

import '../../../utils/color.dart';
import '../../../utils/global.dart';

class Editingpage extends StatefulWidget {
  const Editingpage({super.key});

  @override
  State<Editingpage> createState() => _EditingpageState();
}

class _EditingpageState extends State<Editingpage> {
  GlobalKey imgKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: search,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
              currentImage = myfestivak[0].img[0];
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
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
              RepaintBoundary(
                key: imgKey,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: h * 0.400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('$currentImage'),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: imagebottomcnetr,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: (fileImage!=null)?FileImage(fileImage!):AssetImage(''))
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(currentx.toDouble(), currenty.toDouble()),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment:bottomcnetr,
                              child: Text(
                                '${txtphone.text}',
                                style: TextStyle(
                                    fontSize: increrment.toDouble(),
                                    color: currentcolor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Align(
                              alignment:bottomcnetr,
                              child: Text(
                                '${txtEmail.text}',
                                style: TextStyle(
                                    fontSize: increrment.toDouble(),
                                    color: currentcolor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: w * 0.0300,
              ),
              Divider(
                thickness: 2,
                color: Colors.white60,
              ),
              SizedBox(
                height: w * 0.0300,
              ),
              Expanded(
                  child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              // developer - numbers - text
                              // number --> Uint8List
                              // asset,network,Fileimage(file)
                              XFile? img = await imagePicker.pickImage(
                                  source: ImageSource.gallery);
                              setState(() {
                                fileImage = File(img!.path);
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white60,
                                  width: 1.5,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: w / 12,
                                backgroundImage: fileImage != null
                                    ? FileImage(fileImage!)
                                    : NetworkImage(
                                        'https://png.pngtree.com/png-clipart/20190604/original/pngtree-creative-company-logo-png-image_1197025.jpg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: w * 0.0300,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(button)),
                              onPressed: () {
                                setState(() {
                                  fileImage = null;
                                });
                              },
                              child: Text(
                                "Remove",
                                style: TextStyle(color: search),
                              )),
                          SizedBox(
                            height: w * 0.0300,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: search,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              cursorColor: button,
                              onChanged: (value) {
                                setState(() {
                                  email = txtEmail.text;
                                });
                              },
                              controller: txtEmail,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.white,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.white),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: button, width: 1.5),
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white60, width: 1),
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(
                            height: w * 0.0300,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: search,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              cursorColor: button,
                              style: TextStyle(color: Colors.white),
                              controller: txtphone,
                              onChanged: (value) {
                                setState(() {
                                  phone = txtphone.text;
                                });
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Phone number',
                                  hintStyle: TextStyle(color: Colors.white),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: button, width: 1.5),
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white60, width: 1),
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: w * 0.0300,
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        height: w * 0.0180,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Font Size         ',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 22),),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  increrment++;
                                });
                              },
                              icon: Icon(Icons.add)),
                          Icon(
                            Icons.format_size,
                            color: button,
                            size: 40,
                          ),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  increrment--;
                                });
                              },
                              icon: Icon(Icons.remove))
                        ],
                      ),
                      SizedBox(
                        height: w * 0.0300,
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        height: w * 0.0180,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  currenty-=5;
                                });
                              },
                              icon: Icon(Icons.arrow_upward_outlined)),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  currenty+=5;
                                });
                              },
                              icon: Icon(Icons.arrow_downward_outlined)),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  currentx-=5;
                                });
                              },
                              icon: Icon(Icons.arrow_back_rounded)),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  currentx+=5;
                                });
                              },
                              icon: Icon(Icons.arrow_right_alt)),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                 bottomcnetr=Alignment.topCenter;
                                });
                              },
                              icon: Icon(Icons.align_horizontal_center)),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  bottomcnetr=Alignment.topLeft;
                                });
                              },
                              icon: Icon(Icons.align_horizontal_right)),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  bottomcnetr=Alignment.bottomRight;
                                });
                              },
                              icon: Icon(Icons.align_horizontal_right_rounded)),
                        ],
                      ),
                      SizedBox(
                        height: w * 0.0300,
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        height: w * 0.0180,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Image Alignmet',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 22),),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  imagebottomcnetr=Alignment.topLeft;
                                });
                              },
                              icon: Icon(Icons.align_horizontal_right_rounded)),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  imagebottomcnetr=Alignment.topCenter;
                                });
                              },
                              icon: Icon(Icons.align_horizontal_center)),
                          IconButton.filledTonal(
                              onPressed: () {
                                setState(() {
                                  imagebottomcnetr=Alignment.topRight;
                                });
                              },
                              icon: Icon(Icons.align_horizontal_right)),
                        ],
                      ),
                      SizedBox(
                        height: w * 0.0300,
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        height: w * 0.0180,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            myfestivak[selectedindex].img.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentImage =
                                      myfestivak[selectedindex].img[index];
                                });
                              },
                              child: Card(
                                child: Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white60,
                                          blurRadius: 5,
                                          spreadRadius: 1,
                                          offset: Offset(1, 1))
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            '${myfestivak[selectedindex].img[index]}'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: w * 0.0300,
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        height: w * 0.0180,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              textfamily.length,
                              (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentcolor = Colorlist[index];
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: CircleAvatar(
                                    radius: w / 18,
                                    backgroundColor: Colorlist[index],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: w * 0.0300,
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        height: w * 0.0180,
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 60,
            width: 60,
            child: IconButton.filled(
              onPressed: () async {
                RenderRepaintBoundary boundary = imgKey.currentContext!
                    .findRenderObject() as RenderRepaintBoundary;
                final image = await boundary.toImage();
                final byteData =
                    await image.toByteData(format: ImageByteFormat.png);
                log(byteData.hashCode.toString());
                if (byteData != null) {
                  final uint8List = byteData.buffer.asUint8List();
                  log(uint8List.toString());
                  await ImageGallerySaver.saveImage(uint8List);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Image Save Successfully')));
                }
              },
              icon: const Icon(
                Icons.save,
                size: 32,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 60,
            width: 60,
            child: IconButton.filled(
              onPressed: () async {
                RenderRepaintBoundary boundary = imgKey.currentContext!
                    .findRenderObject() as RenderRepaintBoundary;
                ShareFilesAndScreenshotWidgets().shareScreenshot(
                    imgKey, 500, "image", "festival.png", "image/png");
              },
              icon: const Icon(
                Icons.share,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );

  }

}

Color currentcolor = Colors.black;
bool currentcolorselection = false;


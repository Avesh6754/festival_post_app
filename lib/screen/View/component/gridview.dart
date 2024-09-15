import 'package:festival_post_app/model/modellist.dart';
import 'package:festival_post_app/utils/color.dart';
import 'package:flutter/material.dart';



class GridViewMethod extends StatefulWidget {
  const GridViewMethod({super.key});

  @override
  State<GridViewMethod> createState() => _GridViewMethodState();
}

class _GridViewMethodState extends State<GridViewMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      body: GridView.builder(
          itemCount: myfestivak.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('');
          },
          child: Card(
            color:myfestivak[index].currentcolor,
            child: ListTile(
              title: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('${myfestivak[index].image}'),fit: BoxFit.cover)
                ),
              ),
              subtitle: Column(

                children: [
                  Text(
                    "${myfestivak[index].festival_name} ",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 18,
                        color:Colors.white ,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "${myfestivak[index].text} ",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 14,
                        color:Colors.white ,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
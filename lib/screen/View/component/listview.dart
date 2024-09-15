import 'package:festival_post_app/model/modellist.dart';
import 'package:flutter/material.dart';



class ListViewMethod extends StatefulWidget {
  const ListViewMethod({super.key});

  @override
  State<ListViewMethod> createState() => _ListViewMethodState();
}

class _ListViewMethodState extends State<ListViewMethod> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myfestivak.length,
      itemBuilder: (context, index) => Card(
        color:myfestivak[index].currentcolor,
        child: ListTile(
          title: Text(
            '${myfestivak[index].festival_name}',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color:Colors.white ),
          ),
          subtitle: Text(
            "${myfestivak[index].text}",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 13,
                color:Colors.white,
                fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),
          ),

          trailing:Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('${myfestivak[index].image}'),fit: BoxFit.cover)
            ),
          ) ,
        ),
      ),
    );
  }
}
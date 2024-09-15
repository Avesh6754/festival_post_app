import 'package:flutter/material.dart';


import '../../../utils/color.dart';
import '../../../utils/global.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: screenlist,
        index: myindex,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: search,
          selectedItemColor:Colors.teal.shade400,

          unselectedItemColor: Colors.white60,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: (value) {
            setState(() {
              myindex=value;
            });
          },currentIndex: myindex,items:const [

        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.home_outlined,size: 25,), label: 'Home',),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.category,size: 25,), label: 'Category',),
        BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.add_circle_outline_outlined,size: 25), label: 'Edit'),
        BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.book_outlined,size: 25,), label: 'Collection'),
        BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.history,size: 25,), label: 'History'),
      ]),
    );
  }
}
import 'package:festival_post_app/utils/routes.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(My_festival_app());
}

class My_festival_app extends StatefulWidget {
  const My_festival_app({super.key});

  @override
  State<My_festival_app> createState() => _My_festival_appState();
}

class _My_festival_appState extends State<My_festival_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}

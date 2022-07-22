import 'package:flutter/material.dart';
import 'package:flutter_week10b/home.dart';
import 'package:flutter_week10b/statefull.dart';


class MyApp extends StatelessWidget{
  MyApp({Key? key}):super(key: key);
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      home: StateFulPage(),
    );
  }
}

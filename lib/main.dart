import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new3/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomePage() ,
    debugShowCheckedModeBanner: false,
  ));
}




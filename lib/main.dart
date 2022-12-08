import 'package:flutter/material.dart';
import 'package:islamishehab/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      initialRoute:home_screen.routeName ,
      routes: {
        home_screen.routeName:(c)=>home_screen(),
      },

    );}}
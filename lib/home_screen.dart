import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  static const String routeName="home screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "islami"
        ),
        centerTitle: true,
      ),
    );
  }
}

import 'package:flutter/material.dart';


class sebhadetails extends StatelessWidget {
 String name;
 sebhadetails(this.name);
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text(name),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

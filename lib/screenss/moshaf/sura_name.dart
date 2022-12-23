import 'package:flutter/material.dart';
import 'package:islamishehab/screenss/moshaf/model.dart';
import 'package:islamishehab/screenss/moshaf/sura_details.dart';


class suraname extends StatelessWidget {
  String name;
  int index;

  suraname(this.name,this.index);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, Sura_Details.routeName,
                arguments:SuraNameArgs(name,index) );
          },

          child: Text(
      name,
      style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25),
    ),
        ));
  }
}

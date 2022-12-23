import 'package:flutter/material.dart';
import 'package:islamishehab/screenss/setting/myprovider.dart';
import 'package:provider/provider.dart';

class themesheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<myprovider>(context);
    return Column(
      children: [
        InkWell(
          onTap: (){
            provider.themesapp(ThemeMode.light);
          },
            child: items(context, "light", provider.thememode==ThemeMode.light)),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            provider.themesapp(ThemeMode.dark);
          },
            child: items(context, "dark", provider.thememode==ThemeMode.dark)),
      ],
    );
  }
}
Widget items(BuildContext context,String name, bool isSelected)=>Padding(
  padding: const EdgeInsets.all(40.0),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [

      Text(name,style: Theme.of(context).textTheme.headline1?.copyWith(
        color: (isSelected)?Theme.of(context).colorScheme.primary:Theme.of(context).colorScheme.onPrimary,
      )),

      Icon(Icons.done),



    ],

  ),
);

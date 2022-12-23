import 'package:flutter/material.dart';
import 'package:islamishehab/screenss/setting/myprovider.dart';
import 'package:provider/provider.dart';
class languagesheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<myprovider>(context);
    return Column(
      children: [
        InkWell(
          onTap: (){
            pro.languageapp("en");
            Navigator.pop(context);
          },
            child: items(context, "english",pro.language=="en")),
        SizedBox(height: 20,),
    InkWell(
    onTap: (){
      pro.languageapp("ar");
      Navigator.pop(context);
    },
    child:items(context, "arabic", pro.language=="ar"),
    ),
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
      ),

      ),

      Icon(Icons.done),



    ],

  ),
);

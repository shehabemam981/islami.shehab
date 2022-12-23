import 'package:flutter/material.dart';
import 'package:islamishehab/themes/themes.dart';




class radio extends StatelessWidget {
static const String routeName='radio';

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/kaset.png"),
          SizedBox(
            height: 20,
          ),
          Text("اذاعه القران الكريم ",style: Theme.of(context).textTheme.headline1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform.rotate( angle: 9.5,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.not_started,color: mythemedata.goldColor,size: 30,))),
              IconButton(onPressed: (){}, icon: Icon(Icons.pause_circle,size: 40,color: mythemedata.goldColor,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.not_started_rounded,color: mythemedata.goldColor,size: 30,)),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islamishehab/screenss/ahadeth/ahadeth.dart';
import 'package:islamishehab/screenss/setting/myprovider.dart';
import 'package:provider/provider.dart';

class ahadethDetails extends StatelessWidget {
  static const String routeName="ahadethDetails";
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<myprovider>(context);
    var args=ModalRoute.of(context)?.settings.arguments as ahadethModel;
    return Stack(
      children: [
        Image.asset(pro.background(),
          width: double.infinity,
          fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(

              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topLeft:Radius.circular(50)),
              ),
              child:ListView.builder(
                itemCount: args.content.length,
                itemBuilder: (c,index){
                  return  Container(margin: EdgeInsets.all(40),
                    child:Text(args.content[index],style: (ThemeMode==ThemeMode.light)?Theme.of(context).textTheme.headline1:Theme.of(context).textTheme.headline1,),
                  );
                  }
                ,),
            ),
          ),
        )
      ],
    );
  }
}

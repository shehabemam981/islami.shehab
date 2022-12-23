import 'package:flutter/material.dart';
import 'package:islamishehab/screenss/moshaf/moshaf.dart';
import 'package:islamishehab/screenss/ahadeth/ahadeth.dart';
import 'package:islamishehab/screenss/radio/radio.dart';
import 'package:islamishehab/screenss/sebha/sebha.dart';
import 'package:islamishehab/screenss/setting/myprovider.dart';
import 'package:islamishehab/screenss/setting/setting.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class home_screen extends StatefulWidget {
  static const String routeName = "home screen";

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
   int currentindex=0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<myprovider>(context);
    return Stack(
        children: [
         Image.asset(
           provider.background(),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
        appBar: AppBar(
         title: Text(
         AppLocalizations.of(context)!.title,
           style:Theme.of(context).textTheme.headline1,
    ),
    ),
          body: screens[currentindex],
          bottomNavigationBar: BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
            currentIndex: currentindex,
            onTap: (index){
               currentindex=index;
               setState((){});
            },

            items: [
              BottomNavigationBarItem(icon:ImageIcon(
                AssetImage("assets/images/radio.png")
              ) ,label:"radio" ,),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/sebha.png")) ,label:"sebha" ,),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label: "ahadeth",),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/quran-quran-svgrepo-com.png")) ,label:"moshaf" ,),
              BottomNavigationBarItem(icon:Icon(Icons.settings) ,label:"setting" ,),
            ],
          ),
    ),
    ]
    ,
    );
  }
  List<Widget> screens=[
    radio(),
    sebha(),
    ahadeth(),
    moshaf(),
    setting()
  ];
}

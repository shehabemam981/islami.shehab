import 'package:flutter/material.dart';
import 'package:islamishehab/screenss/setting/languagesheet.dart';
import 'package:islamishehab/screenss/setting/myprovider.dart';
import 'package:islamishehab/screenss/setting/themessheet.dart';
import 'package:provider/provider.dart';
class setting extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<myprovider>(context);
    return Container(
      margin: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("language",style: Theme.of(context).textTheme.headline1),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              buttomLanguageSheet(context);
            },
            child: Container(
              padding:EdgeInsets.all(20),

              width: double.infinity,
              decoration: BoxDecoration(
                color: (ThemeMode==ThemeMode.light)?Theme.of(context).colorScheme.surface:Theme.of(context).colorScheme.onSurface,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 3,
                )
              ),
                child: Text((pro.language=="en")?"english":"arabic",style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontSize: 20
                ),
                ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text("Themes",style: Theme.of(context).textTheme.headline1),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              buttomThemesSheet(context);
            },
            child: Container(
              padding:EdgeInsets.all(20),

              width: double.infinity,
              decoration: BoxDecoration(
                  color: (ThemeMode==ThemeMode.light)?Theme.of(context).colorScheme.surface:Theme.of(context).colorScheme.onSurface,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 3,
                  )
              ),
              child: Text(
                (pro.thememode==ThemeMode.light)?"light":"dark",style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontSize: 20
              ),
              ),
            ),
          ),

        ],

      ),
    );
  }
  Future buttomLanguageSheet(BuildContext context){
    return showModalBottomSheet(
        context: context,
        builder: (c){
          return languagesheet();
        },
    );
  }
  Future buttomThemesSheet(BuildContext context){
    return showModalBottomSheet(
      context: context,
      builder: (c){
        return themesheet();
      },
    );
  }
}

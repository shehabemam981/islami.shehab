import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamishehab/screenss/ahadeth/ahadeth%20details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamishehab/themes/themes.dart';

class ahadeth extends StatefulWidget {
  @override
  State<ahadeth> createState() => _ahadethState();
}

class _ahadethState extends State<ahadeth> {
 List<ahadethModel> lista=[];

  @override
  Widget build(BuildContext context) {
    if(lista.isEmpty){
    loadFileAhadeth();
    }
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Image.asset("assets/images/hadeth.png",fit: BoxFit.fill),
            SizedBox(height: 70,),
            Divider(thickness: 6,color: mythemedata.goldColor,),
            Text(AppLocalizations.of(context)!.title,style: Theme.of(context).textTheme.headline2, ),
            Divider(thickness: 6,color: mythemedata.goldColor,),

            Expanded(
              child:(lista.isEmpty)?
              Center(child: CircularProgressIndicator()):
              ListView.separated(
                itemBuilder:(context,index)=>
                    Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, ahadethDetails.routeName,
                              arguments:lista[index] ,);
                        },

                        child: Text(
                         lista[index].title ,
                          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25),
                        ),
                      ),),
                  separatorBuilder: (context,index)=>Divider(endIndent: 10,indent: 10,thickness: 1,color: mythemedata.goldColor,),
                  itemCount: lista.length,
              ),
            )
          ],
        ),
      ),
    );
}

void loadFileAhadeth()async{
   String file=await rootBundle.loadString("assets/files/ahadeth .txt");
   List<String> allhadith=file.trim().split("#\r\n");
   for(int i=0;i<allhadith.length;i++){
     String hadith=allhadith[i];
     List <String> lines=hadith.split("\n");
     String title=lines[0];
     lines.removeAt(0);
     ahadethModel data =ahadethModel(title,lines);
     lista.add(data);
     setState((){});


    }






}
}
class ahadethModel{
  String title;
 List<String> content;
  ahadethModel(this.title,this.content);
}
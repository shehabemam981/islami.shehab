import 'package:flutter/material.dart';
import 'package:islamishehab/screenss/sebha/sebhadetails.dart';
import 'package:islamishehab/screenss/setting/myprovider.dart';
import 'package:provider/provider.dart';
class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  int numbers = 0;
  int counter = 0;
   List<String> names = [
   "سبحان الله ",
  "الحمدلله",
  "الله واكبر",
  ];

  int SelectedIndex1=0;


  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<myprovider>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60),
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              InkWell(
                onTap: (){
                  numbers = counter;
                  if (numbers < 33) {
                    counter++;
                  }
                  else
                  {
                    SelectedIndex1++;
                    counter = 0;
                  }
                  setState(() {});
                },
                child: Container(
                  height: 360,
                  child: Image.asset(
                    pro.sebha(),
                  ),
                ),
              ),
              Image.asset(pro.headsebha()),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "عدد التسبيحات ",
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              numbers = counter;
              if (numbers < 33) {
                counter++;
              } else {
                SelectedIndex1++;
                counter = 0;
              }
              setState(() {});
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text("$numbers"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: (){
              if(SelectedIndex1<=2){
              SelectedIndex1++;
              }
                else {
                 SelectedIndex1-=2;


              }

              setState(() {});
            },
              child: sebhadetails(names[SelectedIndex1])),


        ],
      ),
    );
  }
}

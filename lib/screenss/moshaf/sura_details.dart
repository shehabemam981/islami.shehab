import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamishehab/screenss/moshaf/model.dart';
import 'package:provider/provider.dart';

import '../setting/myprovider.dart';

class Sura_Details extends StatefulWidget {
  static const String routeName = "sura_details";

  @override
  State<Sura_Details> createState() => _Sura_DetailsState();
}

class _Sura_DetailsState extends State<Sura_Details> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<myprovider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraNameArgs;
    if (verses.isEmpty) {
      loadFiles(args.index);
    }
    return Stack(
      children: [
        Image.asset(
         pro.background(),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              args.name,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: (verses.isEmpty)
              ? Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        )),
                    child: ListView.builder(
                      itemCount: verses.length,
                      itemBuilder: (_, index) {
                        return Container(
                            margin: EdgeInsets.all(40),
                            child: Text(verses[index]));
                      },
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  void loadFiles(int index) async {
    String content =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = content.split("\n");
    verses = lines;
    setState(() {});
  }
}

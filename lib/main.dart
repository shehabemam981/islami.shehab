import 'package:flutter/material.dart';
import 'package:islamishehab/home/home_screen.dart';
import 'package:islamishehab/screenss/ahadeth/ahadeth%20details.dart';
import 'package:islamishehab/screenss/moshaf/sura_details.dart';
import 'package:islamishehab/screenss/radio/radio.dart';
import 'package:islamishehab/screenss/setting/myprovider.dart';
import 'package:islamishehab/themes/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
      ChangeNotifierProvider(
        create: (BuildContext context) {
        return myprovider();
        },
        child: MyApp(),
      )


  );
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<myprovider>(context);
    return MaterialApp(
          localizationsDelegates: [
            AppLocalizations.delegate, // Add this line
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en', ''), // English, no country code
            Locale('ar', ''), // arabic, no country code
          ],
          locale:Locale((provider.language)),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute:home_screen.routeName ,
          routes: {
            radio.routeName:(c)=>radio(),
            ahadethDetails.routeName:(c)=>ahadethDetails(),
            home_screen.routeName:(c)=>home_screen(),
            Sura_Details.routeName:(c)=>Sura_Details(),
          },
          theme: mythemedata.lightTheme,
          darkTheme: mythemedata.darkTheme,
          themeMode: provider.thememode,


      );

  }
}
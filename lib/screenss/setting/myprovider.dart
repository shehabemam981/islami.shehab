import 'package:flutter/material.dart';

class myprovider extends ChangeNotifier{
  String language="en";
  ThemeMode thememode=ThemeMode.light;
  void languageapp(languagecode){
    language=languagecode;
    notifyListeners();
  }
  void themesapp(ThemeMode mode){
    thememode=mode;
    notifyListeners();
  }

  String background() {
  if (thememode==ThemeMode.light){
    return   "assets/images/background.png";
  }
  else{
    return "assets/images/background_dark.png";
  }
  }

  String sebha(){
    if(thememode==ThemeMode.light){
      return "assets/images/circle.png";
    }
    return"assets/images/body of dark.png";
  }
  String headsebha(){
    if(thememode==ThemeMode.light){
      return "assets/images/resha.png";
    }
    return"assets/images/head of dark.png";
  }
}

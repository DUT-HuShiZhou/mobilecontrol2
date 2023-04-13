import 'package:flutter/material.dart';
import 'package:mobilecontrol/pages/hardcorepage.dart';
import 'package:mobilecontrol/pages/selectmodepage.dart';
import 'package:mobilecontrol/pages/settingpage.dart';
import './pages/homepage.dart';
import './pages/noticepage.dart';
import './pages/operatepage.dart';
void main(){
  runApp(
    MaterialApp(
      home : new noticepage(),
      routes: {
        '\homepage':(context)=>homePage(),
        '\operatepage':(context)=>operatepage(),
        '\settingpage':(context)=>settingPage(),
        '\selectmodepage':(context)=>selectModePage(),
        '\hardcorepage':(context)=>hardcorePage(),
      },
    )
  );
}
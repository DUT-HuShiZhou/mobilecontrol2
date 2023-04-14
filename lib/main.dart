
import 'package:flutter/material.dart';
import 'package:mobilecontrol/models/PowerStateModel.dart';
import 'package:mobilecontrol/pages/hardcorepage.dart';
import 'package:mobilecontrol/pages/selectmodepage.dart';
import 'package:mobilecontrol/pages/settingpage.dart';
import './pages/homepage.dart';
import './pages/noticepage.dart';
import './pages/operatepage.dart';
import'package:provider/provider.dart';
void main(){

  runApp(ChangeNotifierProvider(create:((context)=>PowerStateModel(0,0,'初始模式',1)),child: const Myapp())

  );
}
class Myapp extends StatelessWidget{
  const Myapp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        home : new noticepage(),
        routes: {
          '\homepage':(context)=>homePage(),
          '\operatepage':(context)=>operatepage(),
          '\settingpage':(context)=>settingPage(),
          '\selectmodepage':(context)=>selectModePage(),
          '\hardcorepage':(context)=>hardcorePage(),
        }
    );
  }


}
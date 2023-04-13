import 'package:flutter/material.dart';

class settingPage extends StatefulWidget
{
  @override
  State createState()=>new settingpage();
}
class settingpage extends State<settingPage>
{
  settingpage();
  @override
  Widget build(BuildContext context)
  {
    return Material(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
            width: 412,
            height: 60,
            padding: EdgeInsets.all(8),
            child: Text('设置',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: '宋体'),),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            width: 412,
            height: 350,
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('电源实时监控设置',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: '宋体'),),
              ],
            ),

          )
        ],
      ),
    );
  }
}
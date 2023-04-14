import 'package:flutter/material.dart';
import 'package:mobilecontrol/models/PowerStateModel.dart';
import 'package:provider/provider.dart';

class selectModePage extends StatefulWidget
{
  @override
  State createState() => new selectmode();
}
class selectmode extends State<selectModePage>
{
  selectmode();
  @override
  Widget build(BuildContext context)
  {
    return Consumer<PowerStateModel>(builder: (context,value,child)=>Material(
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(color: Colors.blueAccent),
              width: 412,
              height: 65,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('选择模式',style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: '宋体'),),
                  Icon(
                      Icons.info_outline,
                      color: Colors.black,
                      size: 15
                  )
                ],
              )
          ),
          Spacer(flex: 1),
          ElevatedButton(
              onPressed:(){
                print('恒定功率');
                value.ChangeMode(('恒定功率'));
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: 412,
                height: 50,
                padding: EdgeInsets.all(8),
                child: Text('省电模式',style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: '宋体'),),
              )
          ),
          Spacer(flex: 1),
          ElevatedButton(
              onPressed:(){
                print('恒定速度');
                value.ChangeMode('恒定速度');
              }
              ,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: 412,
                height: 50,
                padding: EdgeInsets.all(8),
                child: Text('定速巡航',style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: '宋体'),),
              )
          ),
          Spacer(flex: 1),
          ElevatedButton(
              onPressed:(){
                print('电助力模式');
                value.ChangeMode('电助力模式');
                },
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: 412,
                height: 50,
                padding: EdgeInsets.all(8),
                child: Text('电助力模式',style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: '宋体'),),
              )
          ),
          Spacer(flex: 1),
          ElevatedButton(
              onPressed:() {
                Navigator.pushNamed(context, '\hardcorepage');
                value.ChangeMode('手动模式');
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: 412,
                height: 50,
                padding: EdgeInsets.all(8),
                child: Text('手动模式',style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: '宋体'),),
              )
          )
        ],
      ),
    ));
  }
}
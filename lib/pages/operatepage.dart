import 'package:flutter/material.dart';
import 'package:mobilecontrol/models/PowerStateModel.dart';
import 'package:provider/provider.dart';
class operatepage extends StatefulWidget
{
  @override
  State createState() => new operatepageState();
}
class operatepageState extends State<operatepage>
{
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.blueAccent,
            width: 412,
            height: 80,
            alignment: Alignment.center,
            child:Row(
              children: [
                Icon(
                  Icons.settings,
                  size: 25,
                  color: Colors.white,
                ),
                Text('电源实时情况监测',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: '宋体'),),
              ],
            )
          ),
          Spacer(flex: 1,),
          Consumer<PowerStateModel>(builder: (context,value,child)=>Container(
            width: 372,
            height: 300,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text('电压：${value.valtage}V',style: TextStyle(color: Colors.black,fontFamily: '宋体',fontSize: 18)),
                Text('电流：${value.current}A',style: TextStyle(color: Colors.black,fontFamily: '宋体',fontSize: 18)),
                Text('当前模式：${value.mode}',style: TextStyle(color: Colors.black,fontFamily: '宋体',fontSize: 18)),
                Text('小车运行功率：2.5w',style: TextStyle(color: Colors.black,fontFamily: '宋体',fontSize: 18)),
                Text('电源输出功率：3w',style: TextStyle(color: Colors.black,fontFamily: '宋体',fontSize: 18)),
                Text('刷新时间:${value.refreshTime}min',style: TextStyle(color: Colors.black,fontFamily: '宋体',fontSize: 18)),
              ],
            ),
          )),
          Spacer(flex: 1,),
          Row(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '\selectmodepage');
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    alignment: Alignment.center,
                    color: Colors.amber,
                    child: Text('调节模式',style: TextStyle(color: Colors.white,fontFamily: '宋体',fontSize: 30)),
                  )
              ),
                  Spacer(flex: 1),
                  ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '\settingpage');
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: Text('设置',style: TextStyle(color: Colors.white,fontFamily: '宋体',fontSize: 30)),
                                  )
                  ),
            ]


          )

        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:mobilecontrol/models/PowerStateModel.dart';
import 'package:provider/provider.dart';

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
    return Consumer<PowerStateModel>(builder: (context,model,child)=>Material(
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
              height: 500,
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('电源实时监控设置',style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: '宋体'),),
                    TextField(
                      onSubmitted:(value){
                        print('用户输入的刷新时间是$value min');
                        model.ChangeRefreshTime(int.parse(value));
                      },
                      decoration:InputDecoration(
                          labelText: '刷新时间设置',
                          hintText: '请输入要设置到的刷星时间',
                          border: OutlineInputBorder()
                      ),
                    )
                  ]
              )
          )
        ],
      ),

    ));
  }
}
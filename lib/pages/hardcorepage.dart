import 'package:flutter/material.dart';

class hardcorePage extends StatefulWidget
{
  @override
  State createState()=> new hardcorepage();
}
class hardcorepage extends State<hardcorePage>
{


  hardcorepage();
  @override
  Widget build(BuildContext context)
  {
    return Material(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //TextField(),
          TextField(
            onSubmitted: (value)=>{
              print('用户选择的电压是$value v')
            },
            decoration: InputDecoration(
              labelText: '电压',
              hintText: '请输入要调节到的电压(范围）',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          TextField(
            onSubmitted: (value)=>{
              print('用户选择的电流是$value A')
            },
            decoration: InputDecoration(
              labelText: '电流',
              hintText: '请输入要调节到的电流(范围）',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          ElevatedButton(
              onPressed:()=>print('确认'),//确认后应该将变化应用于全局状态
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: 412,
                height: 50,
                padding: EdgeInsets.all(8),
                child: Text('确认',style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: '宋体'),),
              )
          ),
          ElevatedButton(
              onPressed:()=>print('退出'),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: 412,
                height: 50,
                padding: EdgeInsets.all(8),
                child: Text('退出',style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: '宋体'),),
              )
          )
        ],
      ),
    );
  }
}
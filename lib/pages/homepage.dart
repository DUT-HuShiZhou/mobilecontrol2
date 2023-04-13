import 'package:flutter/material.dart';

class homePage extends StatelessWidget
{
  const homePage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Material(
        color: Colors.blueAccent,
        child:InkWell
        (
          onTap:(){
            Navigator.pushNamed(context, '\operatepage');
          },
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('智能车智能电源控制平台',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: '宋体')),
                Text('请按任意处进入系统',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: '宋体')),
                        ]
        )
        )
    );
  }
}
import 'package:flutter/material.dart';

class noticepage extends StatelessWidget{
  noticepage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:
          [
            Container(
              width:412,
            height: 60,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Text('使用前须知',style: TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: '宋体'))
                      ),
            Spacer(flex: 1),
            Text('1.使用前，请确保手机已连接由ESP8266模块产生的热点',style: TextStyle(color: Colors.black,fontSize: 20.0,fontFamily: '幼圆')),
            Text('2.在手动调节模式下，请根据实际情况调节所需电压、电流，对操作不当造成硬件损坏的，概不负责',style: TextStyle(color: Colors.red,fontSize: 20.0,fontFamily: '幼圆')),
            Text('3.感谢硬件组耿盛嵘，宋博文在硬件方面的技术支持',style: TextStyle(color: Colors.black,fontSize: 20.0,fontFamily: '幼圆')),
            Spacer(flex: 1),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '\homepage');
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  child:Row(
                    children:
                      [
                        Icon(
                          Icons.check,
                          color: Colors.white
                        ),
                        Text('确认',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: '宋体')),
                      ]
                  )
                )
            )
          ]
      )
    );
  }
}

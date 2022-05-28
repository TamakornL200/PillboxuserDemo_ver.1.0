//patientInfoCheck
import 'package:flutter/material.dart';
import './main.dart'as first;
import './usermainpage.dart';


createAlertDialog(BuildContext context){
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text("โปรดพลิกหน้าจอก่อนเข้าโหมดผู้ใช้งาน"),
    );

  });
}

void main() => runApp(const patientInfoCheck());

class patientInfoCheck extends StatelessWidget {
  const patientInfoCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes:{
        //"/second" : (context) => const SecondScreen(),
      },

      home: Scaffold(
        appBar: AppBar(
          title: Text('Paitent Confirmation'),
        ),


        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(3.0)),
                    Image(
                      image: AssetImage('images/User_icon.png'),
                    ),
                    Text('ชื่อ/Name - นามสกุล/Surname',
                      style: TextStyle(fontSize: 18,
                      ),
                    ),
                    Text('รหัสประจำตัวผู้ป่วย/ Paitent ID',
                      style: TextStyle(fontSize: 18,
                      ),
                    ),
                    Text('รหัสกล่องยา/ Pillbox ID',
                      style: TextStyle(fontSize: 18,
                      ),
                    ),

                  ],

                ),

                Padding(padding: EdgeInsets.all(3.0)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(33.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        minimumSize: Size(20, 30),
                      ),
                      onPressed: () {

                        showDialog(context: context,

                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('ก่อนเข้าสู่โหมดผู้ใช้งาน'),
                                content: Text('กรุณาพลิกมุมมอง อุปกรณ์เป็นเเนวนอน'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => usermainpage()),);
                                    },
                                    child: Text('ตกลง'),
                                  )
                                ],
                              );
                            }
                            );
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => usermainpage()),);
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => firclockState()),);
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => usermainpage()),);
                      },
                      child: const Text('CONFRIM/ตกลง',),

                    ),
                    Padding(padding: EdgeInsets.all(4.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(20, 30),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => first.MyHome()),);
                      },
                      child: const Text('CANCEL/ยกเลิก'),
                    ),
                  ],
                ),


              ],


            ),
          ),
        ),
      ),
    );
  }
}

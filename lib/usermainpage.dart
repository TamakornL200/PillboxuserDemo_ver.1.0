//usermainpage
import 'dart:async';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:flutter/material.dart';
import './usermainpage.dart'; //หน้าเตือนหน้าเเรก
import './sideEffect.dart'; // ผลข้างเคียง
import './userProgress.dart'; // ประวัติการกินยา
import 'colourBlindeye.dart'; // ทดสอบตาบอดสี
void main() {
  runApp(usermainpage());
}


class usermainpage extends StatefulWidget {
  @override
  State<usermainpage> createState() => usermainpageState();
}



class usermainpageState extends State<usermainpage> {
 // const usermainpage({Key? key}) : super(key: key);
TimeOfDay _timeOfDay = TimeOfDay.now();
TextEditingController hourController = TextEditingController();
TextEditingController minuteController = TextEditingController();
  @override

void initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(_timeOfDay.minute != TimeOfDay.now().minute){
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    }
    );
  }


  Widget build(BuildContext context){
    //String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";

    var now = DateTime.now();
    return MaterialApp(
      routes:{
        //"/second" : (context) => const SecondScreen(),
      },

      home: Scaffold(
        appBar: AppBar(
          title: Text('การทานยา'),
        ),

        body: Container(

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Day/วัน ${now.day} | Month/เดือน ${now.month} | Year/ปี ${now.year}',
                        style: TextStyle(fontSize: 24,)
                    ),
                    Text('Real Time: ${_timeOfDay.hour} : ${_timeOfDay.minute}',
                        style: TextStyle(fontSize: 24,)
                    ),

                  ],

                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(55.0)),
                    Text("ดูการทายาครั้งถัดไป",
                       style: TextStyle(fontSize: 24,)
                    ),
                    Padding(padding: EdgeInsets.all(6.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        minimumSize: Size(50, 30),
                      ),
                      onPressed: () {
                        // show alarm
                        FlutterAlarmClock.showAlarms();
                      },
                      child: const Icon(Icons.alarm,
                        size: 30.0,
                      ),
                    ),


                  ],

                ),
                Padding(padding: EdgeInsets.all(5.0)),

//จุดควบคุมหลัก control center menu-------------------------------------------------------------------------------------------------------
                Row(
                  children: [

                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                      },
                      child: const Text('ความคืบหน้า',),

                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => usermainpage()),);
                      },
                      child: const Text('การทานยา'),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                      },
                      child: const Text('อาการข้างเคียง'),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => colourBlindeye()),);
                      },
                      child: const Text('แบบทดสอบตาบอดสี'),
                    ),

                  ],
                ),
                Padding(padding: EdgeInsets.all(5.0)),

//จุดควบคุมหลัก control center menu-------------------------------------------------------------------------------------------------------

              ],


            ),
          ),
        ),
      ),
    );
  }
}

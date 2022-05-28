//colourBlindeye.dart
//userProgress
import 'package:flutter/material.dart';
import './usermainpage.dart'; //หน้าเตือนหน้าเเรก
import './sideEffect.dart'; // ผลข้างเคียง
import './userProgress.dart'; // ประวัติการกินยา
import 'colourBlindeye.dart'; // ทดสอบตาบอดสีหน้า welcome
import'./colourBlindeyeTesting.dart'; //ทดสอบตาบอดสีหน้า เริ่มทำ
void main() {
  runApp(colourBlindeye());
}


class colourBlindeye extends StatefulWidget {
  @override
  State<colourBlindeye> createState() => colourBlindeyesState();
}



class colourBlindeyesState extends State<colourBlindeye> {
  // const usermainpage({Key? key}) : super(key: key);

  @override


  Widget build(BuildContext context){
    //String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";

    var now = DateTime.now();
    return MaterialApp(
      routes:{
        //"/second" : (context) => const SecondScreen(),
      },

      home: Scaffold(
        appBar: AppBar(
          title: Text('ทดสอบอาการตาบอดสี'),
        ),

        body: Container(

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Padding(padding: EdgeInsets.all(5.0)),

                Column( children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      minimumSize: Size(140, 50),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => colourBlindeyeTesting()),);
                    },
                    child: const Text('กดเพื่อเริ่มทำแบบทดสอบ',),

                  ),
                  Image(
                    image: AssetImage('images/eye.png'),
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ],

                ),
                //SizedBox(width: 90),


//จุดควบคุมหลัก control center menu-------------------------------------------------------------------------------------------------------
               // Padding(padding: EdgeInsets.all(70.0)),
                Row(
                  children: [

                    Padding(padding: EdgeInsets.all(6.0)),
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
                        primary: Colors.white,
                        onPrimary: Colors.blue,
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
                        primary: Colors.blue,
                        onPrimary: Colors.white,
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

//colourBlindeye.dart
//userProgress
import 'package:flutter/material.dart';
import './usermainpage.dart'; //หน้าเตือนหน้าเเรก
import './sideEffect.dart'; // ผลข้างเคียง
import './userProgress.dart'; // ประวัติการกินยา
import 'colourBlindeye.dart'; // ทดสอบตาบอดสี
void main() {
  runApp(colourBlindeyeTesting());
}


class colourBlindeyeTesting extends StatefulWidget {
  @override
  State<colourBlindeyeTesting> createState() => colourBlindeyeTestingState();
}



class colourBlindeyeTestingState extends State<colourBlindeyeTesting> {
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

                Row( children: [
                  Image(
                    image: AssetImage('images/CB6.png'),
                    width: 180,
                    height: 180,
                    fit: BoxFit.cover,
                  ),

                  Padding(padding: EdgeInsets.all(7.0)),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          minimumSize: Size(20, 20),
                        ),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                        },
                        child: const Text('1',),


                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          minimumSize: Size(20, 20),
                        ),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                        },
                        child: const Text('2',),


                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          minimumSize: Size(20, 20),
                        ),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                        },
                        child: const Text('3',),

                      ),

                    ],

                  ),


                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          minimumSize: Size(20, 20),
                        ),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                        },
                        child: const Text('4',),


                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          minimumSize: Size(20, 20),
                        ),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                        },
                        child: const Text('5',),


                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          minimumSize: Size(20, 20),
                        ),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                        },
                        child: const Text('6',),

                      ),

                    ],

                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          minimumSize: Size(20, 20),
                        ),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                        },
                        child: const Text('7',),


                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          minimumSize: Size(20, 20),
                        ),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                        },
                        child: const Text('8',),


                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          minimumSize: Size(20, 20),
                        ),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                        },
                        child: const Text('9',),

                      ),


                    ],


                  ),
                  Padding(padding: EdgeInsets.all(1.0)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      minimumSize: Size(20, 20),
                    ),
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                    },
                    child: const Text('0',),

                  ),
                  Padding(padding: EdgeInsets.all(6.0)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      onPrimary: Colors.white,
                      minimumSize: Size(20, 20),
                    ),
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                    },
                    child: const Text('บันทึก/ถัดไป',),

                  ),
                  Padding(padding: EdgeInsets.all(6.0)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      onPrimary: Colors.white,
                      minimumSize: Size(20, 20),
                    ),
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                    },
                    child: const Text('ข้าม',),

                  ),

                ],

                ),

                //SizedBox(width: 90),


//จุดควบคุมหลัก control center menu-------------------------------------------------------------------------------------------------------
                 Padding(padding: EdgeInsets.all(7.0)),
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

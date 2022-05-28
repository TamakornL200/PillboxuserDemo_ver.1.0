//userProgress
import 'package:flutter/material.dart';
import './usermainpage.dart'; //หน้าเตือนหน้าเเรก
import './sideEffect.dart'; // ผลข้างเคียง
import './userProgress.dart'; // ประวัติการกินยา
import 'colourBlindeye.dart'; // ทดสอบตาบอดสี
void main() {
  runApp(userProgress());
}


class userProgress extends StatefulWidget {
  @override
  State<userProgress> createState() => userProgressState();
}



class userProgressState extends State<userProgress> {
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
          title: Text('ประวัติการทานยา'),
        ),

        body: Container(

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Padding(padding: EdgeInsets.all(5.0)),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                              new Center(
                              child: new Container(
                                width: 650.0,
                                height: 120.0,
                              decoration: new BoxDecoration(
                                color: Colors.black12,

                              ),
                          child:
                                TextFormField(
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 55),
                                    border: OutlineInputBorder(),

                                    // fillColor: Colors.green,
                                    labelText: 'บันทึกประว้ติการทานยาที่นี่',
                                  ),
                                ),

                      ),
                    ),



                  ],
                ),
                Padding(padding: EdgeInsets.all(5.0)),
            Row(
              children: [
                RaisedButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => register_page()),);
                  },
                  child: Text('บันทึก'),
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                RaisedButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => register_page()),);
                  },
                  child: Text('ยกเลิก'),
                ),
              ],
            ),


//จุดควบคุมหลัก control center menu-------------------------------------------------------------------------------------------------------
                Padding(padding: EdgeInsets.all(8.0)),
                Row(
                  children: [

                    Padding(padding: EdgeInsets.all(6.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
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

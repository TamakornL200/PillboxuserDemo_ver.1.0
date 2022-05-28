import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import './main.dart'as first;
import './patientInfoCheck.dart';

void main() {
  runApp(timer());
}


class timer extends StatefulWidget {
  @override
  State<timer> createState() => timer_state();
}

class timer_state extends State<timer> {

// creating text ediiting controller to take hour
// and minute as input
  TextEditingController hourController = TextEditingController();
  TextEditingController minuteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer setup')
      ),

      body: Center(
          child: Column(children: <Widget>[
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {

                // show alarm
                FlutterAlarmClock.showAlarms();
              },
              child: const Text(
                'Timer setup',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Row(

              children: [
                Padding(padding: EdgeInsets.all(33.0)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    minimumSize: Size(20, 30),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => patientInfoCheck()),);
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
          ])),
    );
  }
}

import 'package:flutter/material.dart';
import './main.dart'as first;
import './time.dart';

int selectedRadio = 1;
//-----------------------[SECOND SCREEN]---------------------------------------------------------------------------------------

void main() => runApp(const register_page());

class register_page extends StatelessWidget {
  const register_page({Key? key}) : super(key: key);

  createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("No issue found! "),
      );

    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes:{
        //"/second" : (context) => const SecondScreen(),
      },

      home: Scaffold(
        appBar: AppBar(
          title: Text('Box sensor checking'),
        ),

        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                    children: <Widget>[
                    ],

                ),
                Padding(padding: EdgeInsets.all(3.0)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    onPrimary: Colors.black,
                    minimumSize: Size(240, 30),
                  ),
                  onPressed: () {
                    createAlertDialog(context);
                  },
                  child: const Text('วันจันทร์ / Monday'),
                ),
                Padding(padding: EdgeInsets.all(3.0)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    onPrimary: Colors.black,
                    minimumSize: Size(240, 30),
                  ),
                  onPressed: () {
                    createAlertDialog(context);
                  },
                  child: const Text('วันอังคาร / Tuesday'),
                ),
                Padding(padding: EdgeInsets.all(3.0)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.black,
                    minimumSize: Size(240, 30),
                  ),
                  onPressed: () {
                    createAlertDialog(context);
                  },
                  child: const Text('วันพุธ / Wednesday'),
                ),
                Padding(padding: EdgeInsets.all(3.0)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    onPrimary: Colors.black,
                    minimumSize: Size(240, 30),
                  ),
                  onPressed: () {
                    createAlertDialog(context);
                  },
                  child: const Text('วันพฤหัสบดี / Thursday'),
                ),
                Padding(padding: EdgeInsets.all(3.0)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlueAccent,
                    onPrimary: Colors.black,
                    minimumSize: Size(240, 30),
                  ),
                  onPressed: () {
                    createAlertDialog(context);
                  },
                  child: const Text('วันศุกร์ / Friday'),
                ),
                Padding(padding: EdgeInsets.all(3.0)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purpleAccent,
                    onPrimary: Colors.black,
                    minimumSize: Size(240, 30),
                  ),
                  onPressed: () {
                    createAlertDialog(context);
                  },
                  child: const Text('วันเสาร์ / Saturday'),

                ),
                Padding(padding: EdgeInsets.all(3.0)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.black,
                    minimumSize: Size(240, 30),
                  ),
                  onPressed: () {
                    createAlertDialog(context);
                  },
                  child: const Text('วันอาทิตย์ / Sunday'),
                ),
                Padding(padding: EdgeInsets.all(3.0)),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => timer()),);
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

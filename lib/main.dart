import 'package:flutter/material.dart';
import './boxcheck.dart';
//import './Register.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHome()
    );
  }
}
class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes:{
        "/second" : (context) => const register_page(),
      },

      home: Scaffold(
        appBar: AppBar(
          title: Text('Pillbox Bluetooth Connectivity Settings'),
        ),

        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10.0)),
                Text('Bluetooth Connectivity',
                    style: TextStyle(fontSize: 29,)
                ),
                Text('mock up purpose only',style: TextStyle(fontSize: 16,)),
                Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => register_page()),);},
                  // Navigator.pushNamed(context, "/second");
                  child: Text('Connected'),
                ),
              ],


            ),
          ),
        ),
      ),
    );
  }
}
//sideEffect
import 'package:flutter/material.dart';
import './usermainpage.dart'; //หน้าเตือนหน้าเเรก
import './sideEffect.dart'; // ผลข้างเคียง
import './userProgress.dart'; // ประวัติการกินยา
import 'colourBlindeye.dart'; // ทดสอบตาบอดสี
void main() {
  runApp(sideEffect());
}


class sideEffect extends StatefulWidget {
  @override

  State<sideEffect> createState() => sideEffectsState();
}

class sideEffectsState extends State<sideEffect> {
bool value = false;

Widget buildCheckbox1() => ListTile(
    leading: Checkbox(
  value: value,
  onChanged: (value){
    //this.value = value;
    setState(() {
      this.value = value!;
    });

  },
    ),
        title: Text('ee1'),
);
Widget buildCheckbox2() => ListTile(
  leading: Checkbox(
    value: value,
    onChanged: (value){
      //this.value = value;
      setState(() {
        this.value = value!;
      });

    },
  ),
  title: Text('ee2'),
);
Widget buildCheckbox3() => ListTile(
  leading: Checkbox(
    value: value,
    onChanged: (value){
      //this.value = value;
      setState(() {
        this.value = value!;
      });

    },
  ),
  title: Text('ee3'),
);


  @override

  Widget build(BuildContext context){

    return MaterialApp(
      routes:{
        //"/second" : (context) => const SecondScreen(),
      },

      home: Scaffold(
        appBar: AppBar(
          title: Text('ผลข้างเคียง'),
        ),

        body: Container(

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                //Padding(padding: EdgeInsets.all(1.0)),

                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  ],
                ),

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
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => userProgress()),);
                        showDialog(context: context,

                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('คันตามผิวหนัง'),
                                content: Text('กรุณาเลือกระดับความรุนเเรง'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('มาก'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    },
                                    child: Text('ปานกลาง'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('น้อย'),
                                  ),
                                ],
                              );
                            }
                        );
                      },
                      child: const Text('คันตามผิวหนัง',),

                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        showDialog(context: context,

                            builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('ตัว-หน้า บวม'),
                            content: Text('กรุณาเลือกระดับความรุนเเรง'),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: (){
                                  showDialog(context: context,

                                      builder: (BuildContext context){
                                        return AlertDialog(
                                          title: Text('ยืนยันส่งผลข้างเคียง'),
                                          actions: <Widget>[
                                            FlatButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                              },
                                              child: Text('ตกลง'),
                                            ),
                                            FlatButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                              },
                                              child: Text('ยกเลิก'),
                                            ),
                                          ],
                                        );
                                      }
                                  );

                                },
                                child: Text('มาก'),
                              ),
                              FlatButton(
                                onPressed: (){
                                  showDialog(context: context,

                                      builder: (BuildContext context){
                                        return AlertDialog(
                                          title: Text('ยืนยันส่งผลข้างเคียง'),
                                          actions: <Widget>[
                                            FlatButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                              },
                                              child: Text('ตกลง'),
                                            ),
                                            FlatButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                              },
                                              child: Text('ยกเลิก'),
                                            ),
                                          ],
                                        );
                                      }
                                  );
                                },
                                child: Text('ปานกลาง'),
                              ),
                              FlatButton(
                                onPressed: (){
                                  showDialog(context: context,

                                      builder: (BuildContext context){
                                        return AlertDialog(
                                          title: Text('ยืนยันส่งผลข้างเคียง'),
                                          actions: <Widget>[
                                            FlatButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                              },
                                              child: Text('ตกลง'),
                                            ),
                                            FlatButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                              },
                                              child: Text('ยกเลิก'),
                                            ),
                                          ],
                                        );
                                      }
                                  );

                                },
                                child: Text('น้อย'),
                              ),
                            ],
                          );
                        }
                        );
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => usermainpage()),);
                      },
                      child: const Text('ตัว-หน้าบวม'),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        showDialog(context: context,

                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('ชาปลายมือ-เท้า'),
                                content: Text('กรุณาเลือกระดับความรุนเเรง'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('มาก'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    },
                                    child: Text('ปานกลาง'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('น้อย'),
                                  ),
                                ],
                              );
                            }
                        );

                      },
                      child: const Text('ชาปลายมือ-เท้า'),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        showDialog(context: context,

                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('คลื่นใส่อาเจียน'),
                                content: Text('กรุณาเลือกระดับความรุนเเรง'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('มาก'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    },
                                    child: Text('ปานกลาง'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('น้อย'),
                                  ),
                                ],
                              );
                            }
                        );
                      },
                      child: const Text('คลื่นใส้อาเจียน'),
                    ),

                  ],
                ),

                Padding(padding: EdgeInsets.all(5.0)),

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
                        showDialog(context: context,

                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('ปัสสาวะสีส้ม'),
                                content: Text('กรุณาเลือกระดับความรุนเเรง'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('มาก'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    },
                                    child: Text('ปานกลาง'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('น้อย'),
                                  ),
                                ],
                              );
                            }
                        );
                      },
                      child: const Text('ปัสสาวะสีส้ม',),

                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        showDialog(context: context,

                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('ปวดท้อง'),
                                content: Text('กรุณาเลือกระดับความรุนเเรง'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('มาก'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    },
                                    child: Text('ปานกลาง'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('น้อย'),
                                  ),
                                ],
                              );
                            }
                        );
                      },
                      child: const Text('ปวดท้อง'),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        showDialog(context: context,

                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('ตัว-ตาเหลือง'),
                                content: Text('กรุณาเลือกระดับความรุนเเรง'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('มาก'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    },
                                    child: Text('ปานกลาง'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('น้อย'),
                                  ),
                                ],
                              );
                            }
                        );
                      },
                      child: const Text('ตัว-ตาเหลือง'),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        showDialog(context: context,

                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('ผื่นคัน'),
                                content: Text('กรุณาเลือกระดับความรุนเเรง'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('มาก'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    },
                                    child: Text('ปานกลาง'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('น้อย'),
                                  ),
                                ],
                              );
                            }
                        );
                      },
                      child: const Text('ผื่นคัน'),
                    ),

                  ],
                ),
                Padding(padding: EdgeInsets.all(5.0)),
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
                        showDialog(context: context,

                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('การมองเห็นผิดปกติ'),
                                content: Text('กรุณาเลือกระดับความรุนเเรง'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('มาก'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    },
                                    child: Text('ปานกลาง'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('น้อย'),
                                  ),
                                ],
                              );
                            }
                        );
                      },
                      child: const Text('การมองเห็นผิดปกติ',),

                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () {
                        showDialog(context: context,

                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('ปัสสาวะออกน้อย'),
                                content: Text('กรุณาเลือกระดับความรุนเเรง'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('มาก'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    },
                                    child: Text('ปานกลาง'),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      showDialog(context: context,

                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text('ยืนยันส่งผลข้างเคียง'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ตกลง'),
                                                ),
                                                FlatButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => sideEffect()),);
                                                  },
                                                  child: Text('ยกเลิก'),
                                                ),
                                              ],
                                            );
                                          }
                                      );

                                    },
                                    child: Text('น้อย'),
                                  ),
                                ],
                              );
                            }
                        );
                      },
                      child: const Text('ปัสสาวะออกน้อย'),
                    ),

//จุดควบคุมหลัก control center menu-------------------------------------------------------------------------------------------------------
                  ],
                ),

                Padding(padding: EdgeInsets.all(5.0)),


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
                        primary: Colors.blue,
                        onPrimary: Colors.white,
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



              ],


            ),
          ),
        ),
      ),
    );
  }
}
//จุดควบคุมหลัก control center menu-------------------------------------------------------------------------------------------------------

//Buttons

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.pinkAccent,
                shadowColor: Colors.green,
                elevation: 13,
              ),
              onPressed: button1,
              onLongPress: () {
                showSnackBar(context);
              },
              icon: Icon(
                Icons.alarm,
                color: Colors.white,
              ),
              label: Text("Alarm"),
            ),
            TextButton(
                style: TextButton.styleFrom(
                  shadowColor: Colors.blue,

                ),
                onPressed: (){
                  showSnackBar(context);
                }, child:Text("Text Buttton",
            style: TextStyle(
              color: Colors.deepOrangeAccent,
            ),)),
            OutlinedButton(
              style:OutlinedButton.styleFrom(
                foregroundColor:Colors.indigo,
                backgroundColor: Colors.white54,
                side: BorderSide(color:Colors.red,width:3)
              ),
                onPressed: (){
              showSnackBar(context);
            }, child: Text("Outline Button")),
            IconButton(
                color:Colors.blue,
                tooltip: "notification Button",
                onPressed: (){

            }, icon: Icon(Icons.notifications)),
            FloatingActionButton(
              child:Icon(Icons.notification_add),
                onPressed: (){
              showSnackBar(context);
            }),
            FloatingActionButton.extended(
                onPressed: (){
                  showSnackBar(context);
                },label: Text("Floating Action Buttion"),)
          ],
        ),
      ),
    );
  }
}

void button1() {
  debugPrint("This is elevated Buttons.");
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text("You are Long Pressing"),
    backgroundColor: Colors.indigo,
  ));
}

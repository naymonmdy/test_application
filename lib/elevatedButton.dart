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

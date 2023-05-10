//List View

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 String _str="Hello";
 int i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid View"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$_str $i"),
              ElevatedButton(onPressed: () {
                setState(() {
                  i++;
                  _str="Hi";
                });
              }, child: Text("Change Text")),
            ],

          ),
        ));
  }
}
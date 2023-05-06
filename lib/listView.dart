//List View
import 'dart:ui';

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
        title: const Text("List View Builder"),
      ),
      body:ListView.builder(
        //scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(20),
        itemCount: 1000,
          itemBuilder:(BuildContext,int position)
      {
          return  _profile(context, position);
      })
    );
  }
    Widget _profile(BuildContext context, int position)
    {
      debugPrint("Running UI $position");
      return Card(
        elevation: 2,
        child: ListTile(
          onTap: (){
            _showSackBar(context,"Person $position");
          },
          leading: Icon(Icons.person),
          title: Text("Person $position"),
          subtitle: Text("Address $position"),
          trailing:(position%2==0)?Icon(Icons.phone): Icon(Icons.email),

        ),
      );
    }
    void _showSackBar(BuildContext context, String text){
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content:Text(text)));
    }
}

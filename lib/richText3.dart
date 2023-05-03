import 'dart:html';

import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner:false,home:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        leading:Icon(
          Icons.info,
          color: Colors.white,
        ),
        title: Text("My Home Page",
        style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(Icons.search_rounded),
        ],
        centerTitle: true,
      ),
      body:Center(
        child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: "N",style:TextStyle(color:Colors.red,fontSize: 10)),
                TextSpan(text: "A",style:TextStyle(color:Colors.blue,fontSize: 50)),
                TextSpan(text: "Y",style:TextStyle(color:Colors.grey,fontSize: 20)),
                TextSpan(text: ".....",style:TextStyle(color:Colors.grey,)),
                TextSpan(text: "M",style:TextStyle(color:Colors.red,fontSize:20)),
                TextSpan(text: "O",style:TextStyle(color:Colors.black,fontSize: 50)),
                TextSpan(text: "N",style:TextStyle(color:Colors.amber,)),
              ]
            ),
        ),
      )
    );
  }
}

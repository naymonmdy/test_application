// Row,Column,Stack ,ListView GridView

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              color: Colors.black12,
              height: 300,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(color: Colors.red,
                    width: 70,
                    height: 100,),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(color: Colors.blue,
                      width: 70,
                      height: 100,),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(color: Colors.green,
                      width: 70,
                      height: 100,),
                  ),
                 Text("Biology is the study of Living thing.")
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
               child: Row(
                 children: [
                   Expanded(
                     flex: 6,
                     child: Container(
                       color: Colors.black,
                       width: 100,
                       height: 200,
                     ),
                   ),
                   Expanded(
                     flex: 4,
                     child: Container(
                       color: Colors.blue,
                       width: 100,
                     ),
                   ),
                   Expanded(
                     flex: 4,
                     child: Column(
                       children: [
                         Expanded(
                           flex:2,
                           child: Container(
                             color: Colors.green,
                           ),
                         ),
                         Expanded(
                           flex:1,
                           child: Container(
                             color: Colors.pinkAccent,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
              ),
            ),
          ],
        ),

    );
  }
}

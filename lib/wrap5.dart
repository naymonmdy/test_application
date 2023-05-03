// Row,Column,Stack ,Wrap,ListView GridView

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
      body:Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Wrap(
          textDirection: TextDirection.rtl,
          direction: Axis.vertical,
          verticalDirection: VerticalDirection.down,
          spacing: 8.0,
          runSpacing:8.0,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.spaceEvenly,
          children: [
            for(int i=0;i<20;i++)
              ElevatedButton(onPressed: (){

              }, child:Text("Button $i"))
          ],
        ),
      )
    );
  }
}

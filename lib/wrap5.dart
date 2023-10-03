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
        body: Container(
          //all width
          width: double.infinity,
          //all height
          height: double.infinity,

          color: Colors.grey,
          child: Wrap(
            //To be right to left
            textDirection: TextDirection.rtl,
            //To be vertical
            direction: Axis.vertical,
            verticalDirection: VerticalDirection.down,
            spacing: 8.0,
            runSpacing: 8.0,
            // To be center
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 20; i++)
                ElevatedButton(onPressed: () {}, child: Text("Button $i"))
            ],
          ),
        ));
  }
}

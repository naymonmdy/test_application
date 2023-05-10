//List View

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
          title: const Text("Grid View"),
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(8),
          itemCount: 30,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3
          ,   mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 2/3),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(4),
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Person $index"),
                  Divider(color: Colors.white,),
                  Icon(Icons.person),
                  Divider(color: Colors.white,),
                  ElevatedButton(onPressed:(){
                    _showSackBar(context,"You follow the persone $index");
                  }, child:Text("Follow"))
                ],
              ),

            );
          },

        ));
  }
  void _showSackBar(BuildContext context, String text){
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content:Text(text)));
  }
}

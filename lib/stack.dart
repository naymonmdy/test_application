//Overlap widget
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
        title: const Text("Stack Widget"),
      ),
      body: Stack(
        //alignment: Alignment.bottomRight,
        clipBehavior: Clip.none,
        children: [
          Image.network(
              "https://cdn.pixabay.com/photo/2016/11/29/09/29/beach-1868716_1280.jpg"),
          Positioned(
            bottom: 10,
            right: 10,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.camera_enhance_outlined),
              label: Text("Change Photo"),
            ),
          ),
          Positioned(
           top: 10,
            right: 10,
            child: IconButton(
              color: Colors.white,
                onPressed: (){}, icon:Icon(Icons.edit)),
          ),
          Positioned(
            bottom:-60,
           left: 15,
           child: Container(
             // width: 80,
             //   height: 80,
               child:CircleAvatar(
                 radius:60,
               backgroundImage:AssetImage("assets/musicCatton.jpg")),
               ),
         ),
        ],
      ),
    );
  }
}

import "package:flutter/material.dart";
import "package:test_application/screen/secondScreen.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Screen"),),
      body: Center(
        child:ElevatedButton(
            child:const Text("Go To Second Screen"),
            onPressed: () async{
            Navigator.pushNamed(context, '/second');
               
        },
      ),
    ));
  }
}

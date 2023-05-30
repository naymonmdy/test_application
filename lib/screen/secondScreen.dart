import "package:flutter/material.dart";
import 'package:test_application/screen/thirdScreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text(data),
            ElevatedButton(
                child: const Text("Go To Third Screen"),
                onPressed: () {
                  Navigator.pushNamed(context, "/third");
                }),
            ElevatedButton(
              child: const Text("Go Back To First Screen"),
              onPressed: () {
                Navigator.pop(context,"This is Data from second Screen");
              },
            ),
          ],
        ),
      ),
    );
  }
}

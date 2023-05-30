import "package:flutter/material.dart";
import 'package:test_application/screen/firstScreen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Go Back To Second Screen")),
            ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.settings.name == "/first");
                },
                child: const Text("Go Back To First Screen")),
          ],
        ),
      ),
    );
  }
}

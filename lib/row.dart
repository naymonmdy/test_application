import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstApp(),
  ));
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.pink,
        height: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 200,
              color: Colors.red,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 50,
                height: 200,
                color: Colors.blue,
              ),
            ),
            Expanded(flex: 1, child: Text("gadgfaegaergaewrgag"))
          ],
        ),
      ),
    );
  }
}
//Flexible(လိုသလောက်ယူ) and Expanded with ration (အကုန်ယူ)

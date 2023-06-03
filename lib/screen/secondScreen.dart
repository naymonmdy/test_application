import "package:flutter/material.dart";

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //to get first screen data
   // int firstNum=ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Second Screen"),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // Text(firstNum.toString()),
            FilledButton(
                child: const Text("Go To Third Screen"),
                onPressed: () {
                  Navigator.pushNamed(context, "/third");
                }),
            OutlinedButton(
              child: const Text("Go Back To First Screen"),
              onPressed: () {
                Navigator.pop(context,[1,24,44]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

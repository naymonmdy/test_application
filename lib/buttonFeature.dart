//Buttons

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
        title: const Text("Buttons"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if(states.contains(MaterialState.hovered))
                      {
                        return Colors.black;
                      }
                  return Colors.indigo;
                  }),
                  iconSize: MaterialStateProperty.resolveWith((states){
                    if(states.contains(MaterialState.hovered))
                      {
                        return 40;
                      }
                    return 24;
                  }),
                  foregroundColor: MaterialStateProperty.resolveWith((states){
                    if(states.contains(MaterialState.hovered))
                      {
                        return Colors.amber;
                      }

                    return Colors.white;
                  })
                ),
                onPressed: button1,
                onLongPress: () {
                  showSnackBar(context);
                },
                icon: Icon(
                  Icons.alarm,
                ),
                label: Text("Alarm"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void button1() {
  debugPrint("This is elevated Buttons.");
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text("You are Long Pressing"),
    backgroundColor: Colors.indigo,
  ));
}

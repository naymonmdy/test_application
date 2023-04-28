import 'package:flutter/material.dart';

// Material
//Stateless Widget/ Statefull widget
void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.info,
          color: Colors.white,
        ),
        title: const Text(
          "My testing app",
        ),
        actions: [
          Icon(
            Icons.settings,
            color: Colors.red,
          )
        ],
        centerTitle: true,
      ),
      body: const Center(
          child: Text(
        "Hello Follow",
        style: TextStyle(
            fontFamily: "Bruno Ace SC",
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.redAccent),
      )),
    );
  }
}

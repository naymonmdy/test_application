import 'package:flutter/material.dart';

// Material UI
//Stateless Widget/ Statefull widget
//assetImage/fileImage/NetworkImage/BinaryImage
void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()));
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
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.settings,
            color: Colors.red,
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/heardPhone.jpg",
            // width: 300,height: 300,fit: BoxFit.fill
             ),
            Image.asset("assets/djMusic.jpg",
                // width: 300,height: 300,fit: BoxFit.fill
              ),
            Image.asset("assets/musicCatton.jpg",
                // width: 300,height: 300,fit: BoxFit.fill
            ),
          ],
        ),
      ),

    );
  }
}

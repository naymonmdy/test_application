import 'package:flutter/material.dart';

//Lesson2 Container Widget
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
        body: Container(
          //color: Colors.blue,
          width: 300,
          height: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.indigo,
            border: Border.all(color:Colors.red,width: 2),
            borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(10)),

          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
          child: Text(
              "A wiki (/ˈwɪki/ (listen) WIK-ee) is an online hypertext publication collaboratively edited and managed by its own audience, using a web browser. A typical wiki contains multiple pages for the subjects or scope of the project, and could be either open to the public or limited to use within an organization for maintaining its internal knowledge base.",
          style: TextStyle(color: Colors.white),),
        ));
  }
}

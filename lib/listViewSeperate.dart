//List View

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
          title: const Text("List View Seperate"),
        ),
        body: ListView.builder(
            itemBuilder: (context, position) {
              return _profile(context, position);
            },
            //separatorBuilder: (context,position){
            // return const Divider (
            // color:Colors.green
            // ),
            // },
            itemCount: 1000));
  }

  Widget _profile(BuildContext context, int position) {
    debugPrint("Running UI $position");

    return Column(
      children: [
        ListTile(
            onTap: () {
              _showSackBar(context, "Person $position");
            },
            leading: Icon(Icons.person),
            title: Text("Person $position"),
            subtitle: Text("Address $position"),
            trailing:
                (position % 2 == 0) ? Icon(Icons.phone) : Icon(Icons.email)),
        if (position % 3 == 0)
          Divider(
            height: 4,
            thickness: 1,
            color: Colors.green,
          ),
        if (position % 3 != 0)
          Divider(
            height: 4,
            thickness: 1,
            color: Colors.black,
          ),
      ],
    );
  }
}

void _showSackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}

import "package:flutter/material.dart";
import 'package:test_application/const/route_list.dart';
import 'package:test_application/screen/firstScreen.dart';
import 'package:test_application/screen/secondScreen.dart';
import 'package:test_application/screen/thirdScreen.dart';

void main (){
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RouteList.routeList;
      home: FirstScreen(),
    );
  }
}

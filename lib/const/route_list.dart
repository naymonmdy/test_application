import 'package:flutter/cupertino.dart';

import '../screen/firstScreen.dart';
import '../screen/secondScreen.dart';
import '../screen/thirdScreen.dart';

class RouteList
{
  static Map<String, Widget Function(BuildContext)> routeList=
  {

  "/first" :(context)=> const FirstScreen(),
  "/second" :(context)=> const SecondScreen(),
  "/third" :(context)=> const ThirdScreen(),

  };
}
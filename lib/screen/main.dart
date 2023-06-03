import "package:flutter/material.dart";
import 'package:test_application/const/route_list.dart';
import 'package:test_application/screen/main_screen.dart';


void main (){
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme:ThemeData.dark().copyWith(
      //   navigationBarTheme: NavigationBarThemeData(
      //     backgroundColor: Colors.red[100],
      //     //indicatorColor: Colors.blueGrey,
      //     iconTheme: MaterialStateProperty.resolveWith((states){
      //       if(states.contains(MaterialState.selected))
      //         {
      //           return IconThemeData(
      //             color: Colors.red,
      //             size: 24,
      //           );
      //         }
      //       return IconThemeData(color:Colors.grey);
      //     }),
      //     labelTextStyle: MaterialStateProperty.resolveWith((states)
      //     {
      //       if(states.contains(MaterialState.selected))
      //       {
      //         return TextStyle(color: Colors.red);//fontSize: 20);
      //       };
      //       return TextStyle(color: Colors.blue);
      //     })
      //   )
      // ),
      // initialRoute: '/first',
      // routes: RouteList.routeList,
      // theme:ThemeData.light().copyWith(
      //   useMaterial3: true,
      //   colorScheme: ColorScheme.light().copyWith(
      //     primary: Colors.red,
      //     onPrimary: Colors.grey,
      //
      //    primaryContainer: Colors.black,
      //     onPrimaryContainer: Colors.yellow,
      //   )
      // ) ,
      theme: ThemeData(
        colorSchemeSeed:Colors.black38,

      ),
      home: MainScreen(),
    );
  }
}

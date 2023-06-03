import 'package:flutter/material.dart';
import 'package:test_application/screen/firstScreen.dart';
import 'package:test_application/screen/secondScreen.dart';
import 'package:test_application/screen/thirdScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  //to declare list of screen widget
  final List<Widget> _bodyList=[const FirstScreen(),const SecondScreen(),const ThirdScreen()];
  //to appear first screen
  Widget _bodyWiget=FirstScreen();

  //to appear name app bar
  List<String> _titleList=["Home","Video Call","Download"];

  //To appear first Screen
  String _title="Home";

  int _selectedIndex=0;
  GlobalKey<ScaffoldState> _drawerKey=GlobalKey();

  Widget build(BuildContext context) {

    return Scaffold(
      key: _drawerKey,
      appBar:AppBar(title: Center(child: Text(_title),),
    ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: ()
      {
        _drawerKey.currentState!.openDrawer();
      }),
      drawer: NavigationDrawer(
        selectedIndex: _selectedIndex,
          onDestinationSelected: (index)
          {
            setState(() {
              _selectedIndex=index;
              _bodyWiget=_bodyList[index];
              _title=_titleList[index];
            });

          },
          children:
          [
            DrawerHeader(child:
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Person Name"),

                ),
            ),
            NavigationDrawerDestination(icon:Icon(Icons.home), label:Text("First screen")),
            NavigationDrawerDestination(icon:Icon(Icons.video_call), label:Text("Screen screen")),
            NavigationDrawerDestination(icon:Icon(Icons.get_app), label:Text("Third screen")),
          ]
      ),
      body: _bodyWiget,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index)
        {
          setState(() {
            _selectedIndex=index;
            _bodyWiget=_bodyList[index];
            _title=_titleList[index];
          });
        },
        selectedIndex: _selectedIndex,
        destinations: [
          const NavigationDestination(icon:Icon(Icons.home), label:"First Screen"),
          const NavigationDestination(icon:Icon(Icons.video_call), label:"Second Screen"),
          const NavigationDestination(icon:Icon(Icons.get_app), label:"Third Screen"),
        ],
      ),
    );
  }
}

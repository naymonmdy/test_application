import "package:flutter/material.dart";
import "package:test_application/screen/secondScreen.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // //appBar: AppBar(title: const Text("First Screen"),),
        // body: Center(
        //   child:ElevatedButton(
        //       child:const Text("Go To Second Screen"),
        //       onPressed: () async{
        //      var secondData= await Navigator.pushNamed(context, '/second',arguments: 195225);
        //      debugPrint(secondData.toString());
        appBar: (AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Specification",
                icon: Badge(
                  child: Icon(Icons.info),
                  label:Text("32"),
                 // backgroundColor:Colors.grey,
                  textColor: Colors.green,
                )
              )
            ],
          ),
        )),
        body: TabBarView(children: [
          _home(),
          _specification(),
        ]),
      ),
    );
  }

  Widget _home() => const Center(
        child: Text("Home"),
      );
  Widget _specification() => const Center(
        child: Text("Specification"),
      );
}

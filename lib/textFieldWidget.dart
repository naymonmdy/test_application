//List View

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
        )
      ),
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _reading = false;
  bool _playing = false;

  String _info = "";
  String _rdoMale="Male";
  String _rdoFemale="Female";
  String _groupValue="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Text Field"),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 100, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          prefix: Icon(Icons.person),
                          label: Text("Enter Your Name"),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        controller: _phoneController,
                        decoration: const InputDecoration(
                          prefix: Icon(Icons.phone),
                          label: Text("Enter Your Phone"),
                        )),
                    SizedBox(
                      height: 20,
                    ), const TextField(
                        textAlign: TextAlign.center,
                        maxLines: 6,
                        minLines: 3,
                        decoration: InputDecoration(
                          prefix: Icon(Icons.maps_home_work_rounded),
                          label: Text("Enter Your Address"),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefix: Icon(Icons.lock),
                          suffix: Icon(Icons.visibility),
                          label: Text("Enter Your Password"),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    CheckboxListTile(
                      controlAffinity:ListTileControlAffinity.leading,
                        title: const Text("Reading"),
                        value: _reading, onChanged: (bool? isCheck) {
                      setState(() {
                        if (isCheck != null) {
                          _reading = isCheck;
                        }
                      });
                    }),
                    CheckboxListTile(
                        controlAffinity:ListTileControlAffinity.leading,
                        title: const Text("Playing"),
                        value: _playing, onChanged: (bool? isCheck) {
                      setState(() {
                        if (isCheck != null) {
                          _playing = isCheck;
                        }
                      });
                    }),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Male"),
                        Radio(
                            activeColor: Colors.red,
                            value:_rdoMale,
                            groupValue:_groupValue,
                            onChanged:(value)
                        {
                          if(value !=null)
                            {
                              setState(() {
                                _groupValue=_rdoMale;
                              });
                            }
                        }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Female"),
                        Radio(
                            //activeColor: Colors.red,
                            value:_rdoFemale,
                            groupValue:_groupValue,
                            fillColor: MaterialStateProperty.resolveWith((states)
                            {
                              if(states.contains(MaterialState.selected))
                              {
                                return Colors.indigo;
                              }
                              return Colors.black;
                            }),
                            onChanged:(value)
                            {
                              if(value !=null)
                              {
                                setState(() {
                                  _groupValue=_rdoFemale;
                                });
                              }
                            }),
                      ],
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _info = "Name is ${_nameController.text}. "
                              "\nPhone Number is ${_phoneController.text}. "
                              "\nAddress is ${_addressController.text}."
                              " \n ${hobbies()}"
                              "\n Gender is $_groupValue";
                        });
                      },
                      child: Text("Generate Info"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(_info),
                  ],
                ),
              )),
        ));
  }

  String hobbies() {
    String h = "Hobbies are";

    if (_reading) {
      h = "$h Reading";
    }
    if (_playing) {
      h = "$h playing";
    }
    return h;
  }
}

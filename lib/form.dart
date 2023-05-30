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
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            errorStyle: TextStyle(
              color: Colors.red,
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
  String? _name,_phone,_address,_password;

  bool _reading = false;
  bool _playing = false;
  String _info = "";
  String _rdoMale="Male";
  String _rdoFemale="Female";
  String _groupValue="";
  final GlobalKey<FormState> _formKey=GlobalKey();

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
                child: Form(
                  key:_formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                          validator: (str)
                          {
                            if(str==null || str.trim().isEmpty)
                              {
                                return "Please Enter your Name";
                              }
                          },
                          onSaved: (str)
                          {
                            _name=str;
                          },
                          decoration: const InputDecoration(
                            prefix: Icon(Icons.person),
                            label: Text("Enter Your Name"),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          validator: (str)
                          {
                            if(str==null || str.trim().isEmpty)
                              {
                                return "Enter your Phone Number";
                              }
                          },
                          onSaved: (str)
                          {
                           _phone =str;
                          },
                          decoration: const InputDecoration(
                            prefix: Icon(Icons.phone),
                            label: Text("Enter Your Phone"),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          validator: (str)
                          {
                            if(str==null || str.trim().isEmpty)
                            {
                              return "Enter Your Address";
                            }
                          },
                          onSaved: (str)
                          {
                            _address=str;
                          },
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
                      TextFormField(
                         validator: (str)
                          {
                            if(str==null || str.trim().length<8)
                              {
                                return "Enter Your Password";
                              }
                          },
                          onSaved: (str)
                          {
                            _password=str;
                          },
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
                          if(_formKey.currentState !=null){
                            _formKey.currentState?.save();
                            if(_formKey.currentState!.validate()){
                              setState(() {
                                _info = "Name is $_name. "
                                    "\nPhone Number is $_phone. "
                                    "\nAddress is $_address."
                                    " \n ${hobbies()}"
                                    "\n Gender is $_groupValue";
                              });
                            }
                          }

                        },
                        child: Text("Generate Info"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(_info),
                    ],
                  ),
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

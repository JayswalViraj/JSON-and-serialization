import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_serial_desirial/JsonModel.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String jsonfile= '{"name":"json","mob":"json","branch":"json"}';
  JsonModel object = JsonModel(name: "obj",mob: "obj", branch: "obj");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  ElevatedButton(onPressed: (){

                         var son =object.toMap();
                         print(jsonEncode(son));


                  }, child: Text("Serilization")),
                  ElevatedButton(onPressed: (){

                        JsonModel decode = JsonModel.fromMap(jsonDecode(jsonfile));
                        print(decode.mob);



                  },child: Text("Deserilization"),),

                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}


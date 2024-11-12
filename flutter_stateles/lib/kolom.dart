import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),// AppBar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
       children:[
        Container(
          width: 200,
          height: 20,
          color: Colors.green,
        ),
        Container(
          width: 100,
          height: 20,
          color: Colors.red,
        ),
         Container(
          width: 250,
          height: 20,
          color: const Color.fromARGB(255, 133, 54, 244),
        ),
       ],
      )
     ),
     );
  
  }
}
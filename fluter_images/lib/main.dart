import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text("Images Widget"),
        ),
        body: Center(
          child: Container(
            width: 450,
            height: 450,
            color: const Color.fromARGB(255, 7, 255, 139),
            child: Image(
              fit: BoxFit.fill,
              //image:AssetImage("images/pesawat.jpg")
              image: NetworkImage("https://picsum.photos/350/500")
            ),
            ),
          ),
        ),
      );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exp1",
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text(
            "RollNo here",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              print("Hello World");
            },
            iconSize: 30,
          ),
          centerTitle: true,
        ),
        body: Center(
            child: ElevatedButton(onPressed: () {}, child: Text("Press here"))),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View with Images"),
          centerTitle: true,
        ),
        body: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 3,
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              child: Image.asset(
                "../assets/barac.jpg",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              child: Image.asset(
                "../assets/barac.jpg",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              child: Image.asset(
                "../assets/barac.jpg",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              child: Image.asset(
                "../assets/barac.jpg",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              child: Image.asset(
                "../assets/barac.jpg",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              child: Image.asset(
                "../assets/barac.jpg",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Imagewidget extends StatelessWidget {
  const Imagewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Image.asset(
        "./images/barcelona-fc.png",
        fit: BoxFit.contain,
      ),
    );
  }
}

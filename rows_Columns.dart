import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rows and Columns"),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(child: Text("ROW1 Column1")),
                    color: Colors.blue,
                    width: 250,
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(child: Text("ROW1 Column2")),
                    color: Color.fromARGB(255, 122, 232, 19),
                    width: 250,
                    height: 150,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(child: Text("ROW2 Column1")),
                    color: Color.fromARGB(255, 211, 13, 13),
                    width: 250,
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(child: Text("ROW2 Column2")),
                    color: Color.fromARGB(191, 144, 4, 172),
                    width: 250,
                    height: 150,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

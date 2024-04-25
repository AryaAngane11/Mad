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
  final List players = [
    "Messi",
    "Ronaldo",
    "Mbappe",
    "Pedri",
    "Bellingham",
    "Gavi",
    "Cubarsi",
    "Rodrygo"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View layout",
              style: TextStyle(
                  color: Color.fromARGB(255, 242, 242, 242),
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Color.fromARGB(207, 1, 1, 1),
        ),
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Center(child: PlayerCard(name: players[index]));
            }),
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  final String name;

  PlayerCard({required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: Icon(
            Icons.account_circle,
            size: 60,
          ),
          title: Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}

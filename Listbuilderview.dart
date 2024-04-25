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
    return Row(
      children: [
        Container(
            height: 60,
            width: 500,
            child: Center(child: Text(name)),
            color: Colors.blueGrey,
            margin: EdgeInsets.fromLTRB(450, 20, 20, 20)),
        Icon(
          Icons.account_box_rounded,
          size: 60,
        ),
      ],
    );
  }
}

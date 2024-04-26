import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Flutter App'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              // Mobile layout
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildBlock(Colors.green, 'Block 1'),
                  SizedBox(height: 20),
                  _buildBlock(Colors.orange, 'Block 2'),
                ],
              );
            } else {
              // Tablet/Desktop layout
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: _buildBlock(Colors.green, 'Block 1'),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: _buildBlock(Colors.orange, 'Block 2'),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildBlock(Color color, String text) {
    return Container(
      width: 150,
      height: 150,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _appBarTitle = 'MailScanner';
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('MailScanner Screen'),
    Text('Primary Screen'),
    Text('Social Screen'),
    Text('Promotions Screen'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          _appBarTitle = 'MailScanner';
          break;
        case 1:
          _appBarTitle = 'Primary';
          break;
        case 2:
          _appBarTitle = 'Social';
          break;
        case 3:
          _appBarTitle = 'Promotions';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Background color of the navigation bar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Primary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Promotions',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:
            Color.fromARGB(255, 7, 134, 79), // Color of selected item
        unselectedItemColor: Colors.blue, // Color of unselected items
        onTap: _onItemTapped,
      ),
    );
  }
}

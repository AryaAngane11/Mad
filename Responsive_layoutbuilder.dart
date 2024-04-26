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


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ini Lintang Ganteng'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text('Hello, Lintang!',
          style: TextStyle(
            fontSize: 24,
           fontWeight: FontWeight.bold,
            backgroundColor: Colors.amber, 
            fontStyle: FontStyle.italic),
        ),
      ),
    )
    );
  }
}
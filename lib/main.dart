import 'package:flutter/material.dart';
import 'package:flutter_lintang/latihan/latihanfix.dart';
import 'package:flutter_lintang/row_column/row_column.dart';
import 'package:flutter_lintang/row_column/row_widget.dart';
import 'package:flutter_lintang/row_column/column.dart';
import 'package:flutter_lintang/row_column/layout_widget.dart';
import 'package:flutter_lintang/latihan/latihan1.dart';
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
        ),
        body: LatihanFix(),
      ),
    );
  }
}

class HellloWidget extends StatelessWidget {
  const HellloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, Lintang!',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.amber,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
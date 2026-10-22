import 'package:flutter/material.dart';
import 'package:flutter_lintang/latihan/latihan2.dart';
import 'package:flutter_lintang/latihan/latihanfix.dart';
import 'package:flutter_lintang/row_column/row_column.dart';
import 'package:flutter_lintang/row_column/row_widget.dart';
import 'package:flutter_lintang/row_column/column.dart';
import 'package:flutter_lintang/row_column/layout_widget.dart';
import 'package:flutter_lintang/latihan/latihan1.dart';
import 'package:flutter_lintang/sized_expanded_stack/ExpandedWidget.dart';
import 'package:flutter_lintang/sized_expanded_stack/LayoutDua.dart';
import 'package:flutter_lintang/sized_expanded_stack/LayoutEmpat.dart';
import 'package:flutter_lintang/sized_expanded_stack/LayoutSatu.dart';
import 'package:flutter_lintang/sized_expanded_stack/LayoutTiga.dart';
import 'package:flutter_lintang/sized_expanded_stack/SizedBoxWidget.dart';
import 'package:flutter_lintang/sized_expanded_stack/StackWidget.dart';
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
        // appBar: AppBar(
        // ),
        body: Latihan2(),
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
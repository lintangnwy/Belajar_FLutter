import 'package:flutter/material.dart';
import 'package:flutter_lintang/GridView/gridBasic.dart';
import 'package:flutter_lintang/GridView/gridBuilder.dart';
import 'package:flutter_lintang/container_widget/latihan_container.dart';
import 'package:flutter_lintang/latihan/latihan2.dart';
import 'package:flutter_lintang/latihan/latihan3.dart';
import 'package:flutter_lintang/latihan/latihan4.dart';
import 'package:flutter_lintang/latihan/latihan5.dart';
import 'package:flutter_lintang/latihan/latihan7.dart';
import 'package:flutter_lintang/latihan/latihanfix.dart';
import 'package:flutter_lintang/list_widget/list_builder2.dart';
import 'package:flutter_lintang/list_widget/list_separated.dart';
import 'package:flutter_lintang/navigation/about_page.dart';
import 'package:flutter_lintang/navigation/contoh_nav.dart';
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
import 'package:flutter_lintang/latihan/latihan2fix.dart';
import 'package:flutter_lintang/list_widget/list_basic.dart';
import 'package:flutter_lintang/list_widget/list_builder_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ContohNav(),
        '/GridView':(context) => Gridbuilder(),
        '/list_widget':(context) => ListBasic(),
        '/sized_expanded_stack' :(context) => Layoutsatu(),
        '/row_column' :(context) => RowColumnWidget(),
        '/container_widget' :(context) => LatihanContainer(),
        '/latihan' :(context) => Latihan1(),
        '/Latihan2fix' :(context) => Latihan2fix(),
        '/Latihan3' :(context) => Latihan3(),
        '/Latihan4' :(context) => Latihan4(),
        '/Latihan5' :(context) => Latihan5(),
        '/Latihan7' :(context) => Latihan7(),
      },
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Latihan Grid Builder'),
      //   ),
      //   body: ContohNav(),
      // ),
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
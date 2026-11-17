import 'package:flutter/material.dart';
import 'package:flutter_lintang/routes/app_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.menu,
      routes: AppRoute.routes,
      // routes: {
      //   '/': (context) => ContohNav(),
      //   '/GridView':(context) => Gridbuilder(),
      //   '/list_widget':(context) => ListBasic(),
      //   '/sized_expanded_stack' :(context) => Layoutsatu(),
      //   '/row_column' :(context) => RowColumnWidget(),
      //   '/container_widget' :(context) => LatihanContainer(),
      //   '/latihan' :(context) => Latihan1(),
      //   '/Latihan2fix' :(context) => Latihan2fix(),
      //   '/Latihan3' :(context) => Latihan3(),
      //   '/Latihan4' :(context) => Latihan4(),
      //   '/Latihan5' :(context) => Latihan5(),
      //   '/Latihan7' :(context) => Latihan7(),
      // },
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
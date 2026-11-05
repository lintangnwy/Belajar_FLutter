import 'package:flutter/material.dart';

class Gridbasic extends StatelessWidget {
  const Gridbasic({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8, childAspectRatio: 0.6), 
      children: [

        Container(
          color: Colors.deepOrange,
          child: FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.markOnly,
            textColor: Colors.green,
          ),
        ),

        Container(
          color: Colors.blueAccent,
          child: FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.horizontal,
          ),
        ),
        
        Container(
          color: Colors.blueGrey,
          child: FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.stacked,
          ),
        ),

        Container(
          color: Colors.black,
          child: FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.markOnly,
          ),
        ),
      ],
    );
  }
}
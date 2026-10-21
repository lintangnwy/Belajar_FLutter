import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:[ 
        FlutterLogo(size: 50, style: FlutterLogoStyle.horizontal,),
        FlutterLogo(size: 50, style: FlutterLogoStyle.stacked,),
        FlutterLogo(size: 50),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Text("Cihuy"),
            Text("Mantap"), 
          ]
        )
        
      ]
    );

  }
}
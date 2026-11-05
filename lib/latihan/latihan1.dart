import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(top: 1),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius : BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 5),
      ),
          child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Icon(
            Icons.settings,
            color: Colors.black,
            size: 50.0,
          ),
          
          Icon(
            Icons.folder,
            color: Colors.black,
            size: 50.0,
          ),
          Icon(
            Icons.search,
            color: Colors.black,
            size: 50.0,
          ),
        ]
      ),  
        ),
    );
     
}
}
import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius : BorderRadius.circular(8),
        border: Border.all(color: Colors.deepOrangeAccent, width: 5),
        gradient: LinearGradient(
          colors: [
            Colors.pinkAccent,
            Colors.lightGreenAccent,
            Colors.cyanAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
        ),
        image:DecorationImage(
          image:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNn7VlU8iwE1KyFvZk6VAVxMlEAnY6Gx9lbiErBtziNQ&s=10"
        ),  
        fit: BoxFit.cover   
      ),
      ),
      transform: Matrix4.rotationZ(0.1),
      child: Center( child: Text("aku ganteng banget") ),
    );
  }
}
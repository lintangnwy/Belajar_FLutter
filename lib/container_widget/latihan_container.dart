import 'package:flutter/material.dart';


class LatihanContainer extends StatelessWidget {
  final Color? backgroundColor;
  final Gradient? gradient;
  
  const LatihanContainer({
    super.key,
    this.backgroundColor,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(top: 100, left: 135, right: 50),
      padding: EdgeInsets.only(top: 50),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: gradient == null ? backgroundColor : null,
        gradient: gradient,
        borderRadius : BorderRadius.circular(8),
        border: Border.all(color: Colors.deepOrangeAccent, width: 5),
        image:DecorationImage(
          image:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgMhd6EoqaGhdgEepg7lGGKf5iVFvCLNXDe93JKZF_zw&s=10"
        ),  
        fit: BoxFit.cover   
      ),
      ),
      transform: Matrix4.rotationX(0.1),
      child: Text("Who Knows", style: TextStyle(color: Colors.white, fontSize: 100))
      
    );
  }
}
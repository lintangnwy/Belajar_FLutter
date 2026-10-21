import 'package:flutter/material.dart';

class LatihanFix extends StatelessWidget {
  const LatihanFix({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(right: 16, left: 16),
      color: const Color.fromARGB(255, 57, 18, 166),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Ini Judul"),
          Container(height: 40, width: 520, color: Colors.white),
          SizedBox(height: 20),

          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Ini Judul",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 160, width: 220, color: Colors.amber,),
              Container(height: 160, width: 220, color: Colors.amber,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 160, width: 220, color: Colors.amber,),
              Container(height: 160, width: 220, color: Colors.amber,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Container(height: 160, width: 220, color: Colors.amber,),
                Container(height: 160, width: 220, color: Colors.amber,)
            ],
          )
        ],
        )
    );
  }
}
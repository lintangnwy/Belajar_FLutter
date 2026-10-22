import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 70,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 30, 144, 220),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: Icon (Icons.account_circle_sharp, size: 50, color: Colors.white),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Lintang Nur Wijaya"),
                  SizedBox(height: 5),
                  Text("XII RPL 3")
                ],
              ),
               ),
                SizedBox(
              width: 60,
              height: 60,
              child: Icon (Icons.notifications, size:30 , color: Colors.white),
            ),

          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Layoutsatu extends StatelessWidget {
  const Layoutsatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 72,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 152, 1, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.scdn.co/image/ab67616d00001e022bad6e56e77d5bef0aa3f2dc"
                  ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Daniel Caesar"),
                  SizedBox(height: 5),
                  Text("Who Knows")
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Gridbuilder extends StatelessWidget {
   Gridbuilder({super.key});

   final List<Map<String, dynamic>> produk = [
    {'nama': 'laptop', 'harga' : 7500000, 'icon': Icons.laptop, 'warna': Colors.blue},
    {'nama': 'headphones', 'harga' : 2500000, 'icon': Icons.headphones, 'warna': Colors.brown},
    {'nama': 'keyboard', 'harga' : 1500000, 'icon': Icons.keyboard, 'warna': Colors.amber},
    {'nama': 'mouse', 'harga' : 6800000, 'icon': Icons.mouse, 'warna': Colors.purple},
   ];
  @override  
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: produk.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.8,
         ),

      itemBuilder: (context, index) {
        final data = produk[index];
        return Card(
          elevation: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(data['icon'], size: 60, color: data['warna']),
              SizedBox(height: 10),
              Text(data['nama'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text("Rp. ${data['harga']}"),
            ],
          ),
        );
      },
       );
  }
}
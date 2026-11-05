import 'package:flutter/material.dart';

class ListBuilder2 extends StatelessWidget {
   ListBuilder2({super.key});
  final List<Map<String, dynamic>> siswa = [
    {'nama': 'abdul', 'kelas': 'XII RPL 3', 'umur': 20},
    {'nama': 'budi', 'kelas': 'XII RPL 2', 'umur': 19},
    {'nama': 'caca', 'kelas': 'XII RPL 1', 'umur': 18},
    {'nama': 'didi', 'kelas': 'XII RPL 4', 'umur': 21},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder
    (
      itemCount : siswa.length,
      itemBuilder: (context, index) {
        final data = siswa[index];
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              child: Text(data['nama'][0]),
            ),
            title: Text(data['nama']),
            subtitle: Text("${data['kelas']} - Umur: ${data['umur'].toString()} tahun"
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

        );
      }
    );
  }
}
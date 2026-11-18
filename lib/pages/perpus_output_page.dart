import 'package:flutter/material.dart';

class HasilBuku extends StatelessWidget {
  final String judulBuku, namaPenerbit, kategoriBuku, tahunTerbit;

  const HasilBuku({
    super.key,
    required this.judulBuku,
    required this.namaPenerbit,
    required this.kategoriBuku,
    required this.tahunTerbit
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil Pendaftaran')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: $judulBuku'),
            Text('Email: $namaPenerbit'),
            Text('Ekskul: $kategoriBuku'),
            Text('Jenis kelamin: $tahunTerbit'),
          ],
        ),
      ),
    );
  }
}
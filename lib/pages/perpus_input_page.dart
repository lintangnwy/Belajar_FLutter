import 'package:flutter/material.dart';
import 'package:flutter_lintang/pages/perpus_output_page.dart';
import 'package:intl/intl.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF2B5876),
            primary: const Color(0xFF2B5876),
            secondary: const Color(0xFF4E4376),
          ),
          scaffoldBackgroundColor: const Color(0xFFF4F6F9),
        ),
        home: const Perpustakaan(),
      ),
    );

class Perpustakaan extends StatefulWidget {
  const Perpustakaan({super.key});

  @override
  State<Perpustakaan> createState() => _Perpustakaan();
}

class _Perpustakaan extends State<Perpustakaan> {
  final _formKey = GlobalKey<FormState>();
  final _namaPeminjam = TextEditingController();
  final _judulBukuC = TextEditingController();
  final _namaPenerbitC = TextEditingController();
  final _tahunTerbitC = TextEditingController();

  String? _kategoriBuku;
  bool _setuju = false;

  @override
  void initState() {
    _tahunTerbitC.text = '';
    super.initState();
  }

  @override
  void dispose() {
    _judulBukuC.dispose();
    _namaPenerbitC.dispose();
    _tahunTerbitC.dispose();
    _namaPeminjam.dispose();
    super.dispose();

  }

  void _kirim() {
    if (_formKey.currentState!.validate()) {
      if (!_setuju) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Row(
              children: [
                Icon(Icons.warning_amber_rounded, color: Colors.white),
                SizedBox(width: 10),
                Text('Kamu harus menyetujui tata tertib pengembalian'),
              ],
            ),
            backgroundColor: Colors.redAccent.shade700,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
        return;
      }
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => HasilBuku(
            judulBuku: _judulBukuC.text,
            namaPenerbit: _namaPenerbitC.text,
            kategoriBuku: _kategoriBuku!,
            tahunTerbit: _tahunTerbitC.text,
            // namaPeminjam: _namaPeminjamC.text,
          ),
        ),
      );
    }
  }

  // Helper untuk styling input agar seragam dan rapi
  InputDecoration _buildInputDecoration({
    required String label,
    required IconData icon,
    String? hint,
  }) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      prefixIcon: Icon(icon, color: const Color(0xFF2B5876)),
      filled: true,
      fillColor: Colors.grey.shade50,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF2B5876), width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.redAccent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perpustakaan Digital',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF2B5876),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Banner melengkung di bagian atas
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF2B5876), Color(0xFF4E4376)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),


              child: const Column(
                children: [
                  Icon(Icons.menu_book_rounded, size: 54, color: Colors.white),
                  SizedBox(height: 12),
                  Text(
                    'Form Peminjaman & Data Buku',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Lengkapi detail buku di bawah ini dengan benar',
                    style: TextStyle(fontSize: 13, color: Colors.white70),
                  ),
                ],
              ),
            ),

            

            

            // Card Form utama
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                elevation: 4,
                shadowColor: Colors.black12,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: _judulBukuC,
                          decoration: _buildInputDecoration(
                            label: 'Judul Buku',
                            hint: 'Contoh: Laskar Pelangi',
                            icon: Icons.book_outlined,
                          ),
                          validator: (v) {
                            if (v == null || v.isEmpty) {
                              return 'Judul buku tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 18),
                        // Input Judul Buku
                        TextFormField(
                          controller: _judulBukuC,
                          decoration: _buildInputDecoration(
                            label: 'Judul Buku',
                            hint: 'Contoh: Laskar Pelangi',
                            icon: Icons.book_outlined,
                          ),
                          validator: (v) {
                            if (v == null || v.isEmpty) {
                              return 'Judul buku tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 18),

                        // Input Nama Penerbit
                        TextFormField(
                          controller: _namaPenerbitC,
                          decoration: _buildInputDecoration(
                            label: 'Nama Penerbit',
                            hint: 'Contoh: Bentang Pustaka',
                            icon: Icons.business_outlined,
                          ),
                          validator: (v) {
                            if (v == null || v.isEmpty) {
                              return 'Nama penerbit tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 18),

                        // Input Tahun / Tanggal Terbit
                        TextFormField(
                          controller: _tahunTerbitC,
                          readOnly: true,
                          decoration: _buildInputDecoration(
                            label: 'Tanggal / Tahun Terbit',
                            hint: 'Pilih tanggal terbit',
                            icon: Icons.calendar_today_outlined,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Wajib memilih tahun terbit';
                            }
                            return null;
                          },
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              setState(() {
                                _tahunTerbitC.text = DateFormat('yyyy-MM-dd')
                                    .format(pickedDate);
                              });
                            }
                          },
                        ),
                        const SizedBox(height: 18),

                        // Dropdown Kategori Buku
                        DropdownButtonFormField<String>(
                          value: _kategoriBuku,
                          decoration: _buildInputDecoration(
                            label: 'Kategori Buku',
                            icon: Icons.category_outlined,
                          ),
                          items: ['Komedi', 'Romance', 'Komik', 'Novel']
                              .map((e) =>
                                  DropdownMenuItem(value: e, child: Text(e)))
                              .toList(),
                          onChanged: (v) => setState(() => _kategoriBuku = v),
                          validator: (v) => v == null
                              ? 'Wajib pilih salah satu kategori buku'
                              : null,
                        ),
                        const SizedBox(height: 20),

                        // Kotak Persetujuan Tata Tertib
                        Container(
                          decoration: BoxDecoration(
                            color: _setuju
                                ? const Color(0xFF2B5876).withOpacity(0.08)
                                : Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: _setuju
                                  ? const Color(0xFF2B5876)
                                  : Colors.grey.shade300,
                            ),
                          ),
                          child: SwitchListTile(
                            title: const Text(
                              'Saya siap mengembalikan buku tepat waktu',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            activeColor: const Color(0xFF2B5876),
                            value: _setuju,
                            onChanged: (v) => setState(() => _setuju = v),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Tombol Submit
                        SizedBox(
                          height: 52,
                          child: ElevatedButton.icon(
                            onPressed: _kirim,
                            icon: const Icon(Icons.check_circle_outline,
                                color: Colors.white),
                            label: const Text(
                              'Daftarkan Buku',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2B5876),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
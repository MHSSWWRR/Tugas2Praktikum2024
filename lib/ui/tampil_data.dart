import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
        backgroundColor: Colors.teal, // Ubah warna AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20), // Padding di sekitar konten
        child: Center(
          child: Card(
            elevation: 5, // Efek bayangan untuk Card
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(15), // Sudut Card yang melengkung
            ),
            child: Padding(
              padding: const EdgeInsets.all(20), // Padding dalam Card
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Ikon profil untuk dekorasi
                  const Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.teal,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Halo, Nama saya",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "NIM: $nim",
                    style: const TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Saya berusia $umur tahun",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Tombol untuk kembali
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Kembali ke halaman sebelumnya
                    },
                    child: const Text(
                      'Kembali',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

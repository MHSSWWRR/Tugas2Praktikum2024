import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: Colors.teal, // Ubah warna AppBar
      ),
      body: Container(
        padding: const EdgeInsets.all(20), // Tambahkan padding
        decoration: BoxDecoration(
          color: Colors.grey[100], // Warna latar belakang yang lembut
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _textboxNama(),
            const SizedBox(height: 15), // Jarak antar field
            _textboxNIM(),
            const SizedBox(height: 15),
            _textboxTahun(),
            const SizedBox(height: 20),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        labelStyle: TextStyle(color: Colors.teal), // Warna label
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(10), // Ubah border menjadi melengkung
        ),
        filled: true,
        fillColor: Colors.white, // Warna latar belakang TextField
      ),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        labelStyle: TextStyle(color: Colors.teal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _nimController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        labelStyle: TextStyle(color: Colors.teal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _tahunController,
      keyboardType: TextInputType.number, // Set keyboard untuk angka
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal, // Warna tombol
        padding: const EdgeInsets.symmetric(vertical: 15), // Padding tombol
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10), // Ubah bentuk tombol menjadi melengkung
        ),
      ),
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                TampilData(nama: nama, nim: nim, tahun: tahun)));
      },
      child: const Text(
        'Simpan',
        style: TextStyle(
          fontSize: 18, // Ubah ukuran font tombol
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

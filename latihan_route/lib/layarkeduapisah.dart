import 'package:flutter/material.dart';

class LayarKeduaPisah extends StatelessWidget {
  final String pesan; // Deklarasi variabel pesan

  // Konstruktor yang menerima pesan
  const LayarKeduaPisah({Key? key, required this.pesan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Kedua Pisah'), // Judul AppBar
      ),
      body: Center(
        child: Text("Ini screen kedua pisah, ada Pesan $pesan"), // Menampilkan pesan yang diterima
      ),
    );
  }
}
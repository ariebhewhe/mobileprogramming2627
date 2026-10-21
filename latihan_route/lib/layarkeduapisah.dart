import 'package:flutter/material.dart';

class LayarKeduaPisah extends StatelessWidget {
  final String pesan; // Deklarasi variabel pesan

  // Konstruktor untuk menerima pesan
  const LayarKeduaPisah({Key? key, required this.pesan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Jika navigasi tanpa data, pesan akan kosong atau null.
    // Kita bisa ambil pesan dari arguments jika dikirim melalui named route.
    final String? receivedMessage = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Kedua Pisah'),
      ),
      body: Center(
        child: Text(
          // Gunakan pesan dari konstruktor jika ada, atau dari arguments
          "Ini screen kedua pisah, ada Pesan: $pesan}",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
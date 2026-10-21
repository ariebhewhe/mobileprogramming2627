import 'package:flutter/material.dart';

class LayarKeduaPisah extends StatelessWidget {
    // Menghapus final string pesan; mengambil argumen yang diperlukan.
    // Konstruktor tidak perlu menerima pesan secara langsung.
    const LayarKeduaPisah({Key? key}) : super(key: key);

     @override
     Widget build(BuildContext context) {
    // Mengambil pesan dari argument. Jika tidak, default string kosong.
    final String? receivedMessage = ModalRoute.of(context)!.settings.arguments as String? ?? 'Tidak ada pesan';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ini Screen 2'),
      ),
      body: Center(
        child: Text(
          // Gunakan pesan dari konstruktor jika ada, atau dari arguments
          "Ini screen kedua pisah, ada Pesan: $receivedMessage",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LayarKeduaPisah extends StatelessWidget {
  const LayarKeduaPisah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ambil pesan dari arguments. Jika tidak ada, defaultnya string kosong.
    final String receivedMessage = ModalRoute.of(context)!.settings.arguments as String? ?? 'Tidak ada pesan';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ini Screen 2'), // <--- Ganti di sini, Njoo! Pastikan teksnya persis 'Ini Screen 2'
      ),
      body: Center(
        child: Text(
          "Ini screen kedua pisah, ada Pesan: $receivedMessage",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
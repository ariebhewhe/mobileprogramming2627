import 'package:flutter/material.dart';

class LayarKedua extends StatelessWidget {
  const LayarKedua({Key? key, required this.pesan}) : super(key: key);
  final String pesan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' Ini Screen 2')),
      body: Center(
        child: ElevatedButton(
          child: Text("Ini screen kedua, ada pesan: $pesan"),
          onPressed: () {
            Navigator.of(context).pop("ini data dari screen 2");
          },
        ),
      ),
    );
  }
}

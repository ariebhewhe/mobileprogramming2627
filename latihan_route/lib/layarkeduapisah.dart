import 'package:flutter/material.dart';

class LayarKeduaPisah extends StatelessWidget {
  final String pesan;

  const LayarKeduaPisah({Key? key, required this.pesan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ini Screen 2 (Pisah)'),
      ),
      body: Center(
        child: Text("Ini screen kedua pisah,ada Pesan : $pesan"),
      ),
    );
  }
}

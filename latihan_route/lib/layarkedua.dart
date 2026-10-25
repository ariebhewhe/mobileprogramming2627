import 'package:flutter/material.dart';

class LayarKedua extends StatelessWidget {
  const LayarKedua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ini Screen 2')),
      body: Center(
        child: ElevatedButton(
          child: const Text("screen kedua, tap icon back di app bar"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:latihan_route/layarkeduapisah.dart';

// Hapus Class LayarKedua
class LayarKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ini Screen 2'),
      ),
      body: Center(child: Text("Ini screen kedua, tap icon back di app bar")),
    );
  }
}
// Hapus Class LayarKedua

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Route',
      routes: {
        '/': (context) => MyHome(),
        '/layar2': (context) => const LayarKeduaPisah(),
      },
      initialRoute: '/',
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Routes'), // Judul AppBar MyHome
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Ke screen Kedua (Tanpa Data)'), // Teks tombol pertama
              onPressed: () {
                Navigator.pushNamed(context, '/layar2'); // Navigasi tanpa data
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Ke screen Kedua (Dengan Data)'), // Teks tombol kedua
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/layar2',
                  arguments: "halloo ini pesan dari screen 1", // Navigasi dengan data
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

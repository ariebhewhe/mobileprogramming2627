import 'package:flutter/material.dart';
import 'package:latihan_route/layarkeduapisah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Route',
      // Hapus properti 'home:'
      routes: {
        '/': (context) => MyHome(),
        '/layar2': (context) => LayarKeduaPisah(), // <--- Menggunakan LayarKeduaPisah
      },
      initialRoute: '/', // Opsional: Menentukan rute awal
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Route'),
      ),
      body: Center(
        child: Column( // Menggunakan Column untuk dua tombol
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Ke screen Kedua (Tanpa Data)'),
              onPressed: () {
                // Navigasi ke LayarKeduaPisah tanpa data
                Navigator.pushNamed(context, '/layar2');
              },
            ),
            SizedBox(height: 20), // Jarak antar tombol
            ElevatedButton(
              child: const Text('Ke screen Kedua (Dengan Data)'),
              onPressed: () {
                // Navigasi ke LayarKeduaPisah dengan mengirimkan data
                Navigator.pushNamed(
                  context,
                  '/layar2',
                  arguments: "halo ini pesan dari screen 1",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// <--- PENTING: Pastikan tidak ada lagi definisi kelas LayarKedua di sini (di main.dart)!
// Jika ada, hapuslah.
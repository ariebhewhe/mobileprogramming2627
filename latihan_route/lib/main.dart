import 'package:flutter/material.dart';
import 'layarkeduapisah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Route',
      // home: MyHome(), // Hapus baris ini
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHome(),
        '/layar2': (context) => const LayarKeduaPisah(), // Pastikan LayarKeduaPisah sudah dibuat
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: const Text('Route tidak ditemukan')),
          body: Center(child: Text('Route tidak dikenal: ${settings.name}')),
        ),
      ),
    );
  }
}

//perlu  dipisah karena Navigator perlu punya parent Material App
class MyHome extends StatelessWidget {
  const MyHome({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Route'),
      ),
      body: Center(
        child: Column( // Gunakan Column untuk menampung dua tombol
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Ke screen Kedua (Tanpa Data)'),
              onPressed: () {
                Navigator.pushNamed(context, '/layar2'); // Navigasi ke LayarKeduaPisah tanpa data
              },
            ),
            SizedBox(height: 20), // Jarak antar tombol
            ElevatedButton(
              child: Text('Ke screen Kedua (Dengan Data)'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/layar2',
                  arguments: "halloo ini pesan dari screen 1", // Kirim data string
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:latihan_route/layarkeduapisah.dart';

class LayarKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Center(child: Text("Ini screen kedua, tap icon back di app bar")),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Route',
      // home: MyHome(), // Menghapus baris MyHome
      routes: {
        '/': (context) => MyHome(),
        '/layar2': (context) => LayarKeduaPisah,
      }
    );
  }
}

//perlu  dipisah karena Navigator perlu punya parent Material App
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Route'),
      ),
      body: Center(
        child: Column( // Untuk menampung dua tombol, gunakan Column
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Ke screen Kedua (Tanpa Data)'),
              onPressed: () {
                Navigator.pushNamed(context, '/layar2'); // LayarKeduaPisah navigasi tanpa data
              },
            ),
            SizedBox(height: 20), // Jarak antar tombol
            ElevatedButton(
              child: Text('Ke screen Kedua (Dengan Data)'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/layar2',
                  arguments: "halo ini pesan dari screen 1", // Kirim data string
                );
              },
            ),
          ],
        ),
      ),
    );
  }
} 
import 'package:flutter/material.dart';
import 'package:lib/layarkeduapisah.dart';

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
      // home: MyHome(), // Hapus baris ini
      routes: {
        '/': (context) => MyHome(),
        '/layar2': (context) => LayarKeduaPisah(), // Pastikan LayarKeduaPisah sudah dibuat
      },
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
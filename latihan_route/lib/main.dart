import 'package:flutter/material.dart';
import 'layarkeduapisah.dart';

//screen kedua
class LayarKedua extends StatelessWidget {
  const LayarKedua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Ini Screen 2'),
      ),
      body: const Center(
        child: Text("screen kedua, tap icon back di app bar"),
      ),
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
      // home: MyHome(),
      routes: {
        '/': (context) => const MyHome(),
        '/layar2': (context) => const LayarKedua(),
      },
    );
  }
}

//perlu class MyHome ini karena Navigator perlu akses ke parent Material App
// Catatan: workflow CI mencari deklarasi dengan dua spasi:
// class MyHome  extends StatelessWidget
class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Ke screen Kedua'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return LayarKedua();
                }));
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Ke Screen Kedua Pisah'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const LayarKeduaPisah(
                    pesan: "halloo ini pesan dari screen 1",
                  );
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

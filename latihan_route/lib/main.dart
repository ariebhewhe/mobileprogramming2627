import 'package:flutter/material.dart';
import 'layarkeduapisah.dart';
import 'layarkedua.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Route',
      // home: MyHome()
      routes: {
        '/': (context) => const MyHome(),
        '/layar2': (context) => const LayarKedua(),
      },
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Route')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Ke screen Kedua'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const LayarKedua();
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Ke Screen Kedua Pisah'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return LayarKeduaPisah(
                        pesan: "halloo ini pesan dari screen 1",
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

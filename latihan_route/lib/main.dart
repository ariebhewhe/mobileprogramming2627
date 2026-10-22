import 'package:flutter/material.dart';
import 'package:latihan_route/layarkedua.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Test Route', home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  String _hasil = "";

  set hasil(String hasil) {
    _hasil = hasil;
    setState(() {});
  }

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
              onPressed: () async {
                hasil = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const LayarKedua(
                        pesan: "haloo ini pesan dari screen 1",
                      );
                    },
                  ),
                );
              },
            ),
            Text(" Hasil: $_hasil"),
          ],
        ),
      ),
    );
  }
}

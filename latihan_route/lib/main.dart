import 'package:flutter/material.dart';

import 'services/notification_service.dart';

// Entry point: siapkan binding Flutter + inisialisasi plugin notifikasi
// sebelum runApp().
Future<void> main() async {
  // Pastikan binding Flutter siap sebelum inisialisasi plugin native.
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi plugin notifikasi + minta izin (Android 13+).
  await NotificationService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Local Notification',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const NotificationScreen(),
    );
  }
}

// Layar demo: satu tombol untuk menampilkan notifikasi lokal.
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Praktikum Local Notification'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => NotificationService.show(),
          child: const Text('Tampilkan Notifikasi'),
        ),
      ),
    );
  }
}

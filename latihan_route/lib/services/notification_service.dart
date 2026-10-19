import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// Layanan notifikasi lokal berbasis `flutter_local_notifications` v22.
///
/// Catatan API v22: `initialize` dan `show` memakai parameter bernama
/// (berbeda dari contoh modul lama di v14 yang masih posisional).
class NotificationService {
  NotificationService._();

  static final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  static bool _initialized = false;

  /// Inisialisasi plugin: konfigurasi Android + minta izin (Android 13+).
  static Future<void> init() async {
    if (_initialized) return;

    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings settings =
        InitializationSettings(android: androidSettings);

    await _plugin.initialize(
      settings: settings,
      // Dipanggil saat pengguna men-tap notifikasi; payload dikirim balik.
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        debugPrint('Notifikasi di-tap. payload: ${response.payload}');
      },
    );

    // Android 13 (API 33) ke atas: minta izin menampilkan notifikasi.
    await _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();

    _initialized = true;
  }

  /// Menampilkan notifikasi lokal sederhana di tray.
  static Future<void> show({
    int id = 0,
    String title = 'Halo dari Flutter!',
    String body = 'Ini adalah isi pesan local notification Anda.',
    String? payload = 'Data tambahan opsional',
  }) async {
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
      'channel_id_01', // id channel
      'Notifikasi Penting', // nama channel
      channelDescription: 'Channel untuk testing local notification',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );

    const NotificationDetails details =
        NotificationDetails(android: androidDetails);

    await _plugin.show(
      id: id, // ID notifikasi
      title: title, // Judul notifikasi
      body: body, // Isi pesan
      notificationDetails: details,
      payload: payload,
    );
  }
}

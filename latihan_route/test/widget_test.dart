// Smoke test dasar untuk layar demo notifikasi.
//
// Catatan: test ini tidak memanggil plugin native (tidak ada platform channel
// di lingkungan test), sehingga aman dijalankan dengan `flutter test`.

import 'package:flutter_test/flutter_test.dart';

import 'package:latihan_route/main.dart';

void main() {
  testWidgets('Layar demo notifikasi tampil', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Praktikum Local Notification'), findsOneWidget);
    expect(find.text('Tampilkan Notifikasi'), findsOneWidget);
  });
}

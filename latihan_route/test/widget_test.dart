import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:latihan_route/main.dart';

void main() {
  testWidgets('MyHome menampilkan dua tombol navigasi', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(ElevatedButton), findsNWidgets(2));
    expect(find.text('Ke screen Kedua'), findsOneWidget);
    expect(find.text('Ke screen Kedua Pisah'), findsOneWidget);
  });

  testWidgets('Tombol pertama membuka LayarKedua lewat named route',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Ke screen Kedua'));
    await tester.pumpAndSettle();

    expect(find.text(' Ini Screen 2'), findsOneWidget);
  });

  testWidgets('Tombol kedua membuka LayarKeduaPisah dengan pesan',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Ke screen Kedua Pisah'));
    await tester.pumpAndSettle();

    expect(
      find.text('Ini screen kedua pisah,ada Pesan : halloo ini pesan dari screen 1'),
      findsOneWidget,
    );
  });
}

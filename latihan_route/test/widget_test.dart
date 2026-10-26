import 'package:flutter_test/flutter_test.dart';

import 'package:latihan_route/main.dart';

void main() {
  testWidgets('navigates to both second screens', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Ke screen Kedua'), findsOneWidget);
    expect(find.text('Ke Screen Kedua Pisah'), findsOneWidget);

    await tester.tap(find.text('Ke screen Kedua'));
    await tester.pumpAndSettle();
    expect(find.text('Ini Screen 2'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Ke Screen Kedua Pisah'));
    await tester.pumpAndSettle();
    expect(
      find.text(
        'Ini screen kedua pisah,ada Pesan : halloo ini pesan dari screen 1',
      ),
      findsOneWidget,
    );
  });
}

import 'package:flutter/material.dart';
import 'credit_cards_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold ini jangan diubah
      title: 'Project Kartu Kredit',
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: const CreditCardsPage(),
        ),
      ),
    );
  }
}

import './credit_cards_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    // ini scafold dan jangan di ubah
      title: 'Project Kartu Kredit',
      theme: ThemeData(fontFamily: 'Lato'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: CreditCardsPage()),
      ),
    );
  }
}

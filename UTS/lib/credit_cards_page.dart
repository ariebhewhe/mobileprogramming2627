import 'package:flutter/material.dart';

class CreditCardsPage extends StatelessWidget {

// TODO 1: GANTI VARIABEL INI DENGAN DATA DIRI ANDA
final String namaMahasiswa = "ANDRI DARMAWAN"; // Isikan nama kamu
final String nimMahasiswa = "20265520015";       // NIM kamu

@override
Widget build(BuildContext context) {
  // TODO 2: BUAT LOGIKA KONDISIONAL BERDASARKAN NIM!
  int lastDigit = int.tryParse(nimMahasiswa.substring(nimMahasiswa.length - 1)) ?? 0;
  bool isGanjil = lastDigit % 2 != 0; // Hasilnya true karena 5 % 2 != 0

  Color warnaKartu1;
  Color warnaKartu2;

  if (isGanjil) {
    warnaKartu1 = const Color(0xFF090943); // Biru (0xFF090943)
    warnaKartu2 = const Color(0xFFC62828); // Merah
  } else {
    warnaKartu1 = const Color(0xFF000000); // Hitam (0xFF000000)
    warnaKartu2 = const Color(0xFF2E7D32); // Hijau
  }
  
  // Sisa kode di bawahnya tetap sama...

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildTitleSection(
                title: "Rincian pembayaran",
                subTitle: "Bagaimana Anda ingin membayar?"),

            _buildCreditCard(
                color: warnaKartu1,
                cardExpiration: "08/2026",
                cardHolder: namaMahasiswa, // Menggunakan variabel nama
                cardNumber: nimMahasiswa), // Menggunakan variabel NIM

            const SizedBox(
              height: 15,
            ),

            _buildCreditCard(
                color: warnaKartu2,
                cardExpiration: "05/2027",
                cardHolder: namaMahasiswa,
                cardNumber: "9874 4785 XXXX 6548"),

            _buildAddCardButton(
              icon: const Icon(Icons.add, color: Colors.purpleAccent),
              color: const Color(0xFF081603),
            )
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // PERINGATAN: DILARANG MENGUBAH NAMA FUNGSI DAN PARAMETER DI BAWAH INI!
  // ===========================================================================

  // Build the title section
  Column _buildTitleSection({required String title, required String subTitle}) {
    // TODO 3: Implementasikan UI untuk judul dan sub-judul di sini.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 4.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 20.0),
          child: Text(
            subTitle,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }

  // Build the credit card widget
  Card _buildCreditCard({
      required Color color,
      required String cardNumber,
      required String cardHolder,
      required String cardExpiration }) {

    // TODO 4: Bangun UI kartu kredit di sini.
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: color,
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogosBlock(),
            Text(
              cardNumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 2,
                fontFamily: 'monospace',
                fontWeight: FontWeight.w500,
              ),
            ),
            _buildDetailsBlock(
              cardHolder: cardHolder,
              cardExpiration: cardExpiration,
            ),
          ],
        ),
      ),
    );
  }

  // buat top row containing logo
  Row _buildLogosBlock() {
    // TODO 5: Panggil asset gambar lokal "contact_less.png" dan "mastercard.png" di sini.
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          'assets/images/contact_less.png',
          width: 30,
          height: 30,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.contactless,
            color: Colors.white,
            size: 30,
          ),
        ),
        Image.asset(
          'assets/images/mastercard.png',
          width: 45,
          height: 30,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.credit_card,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }

  // buat Column berisi kontainer dan Informasi Detail Kartu
  Row _buildDetailsBlock({
    required String cardHolder,
    required String cardExpiration,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'CARDHOLDER',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              cardHolder,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'VALID THRU',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              cardExpiration,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // buat FloatingActionButton / Add Card Button
  Widget _buildAddCardButton({required Icon icon, required Color color}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: color,
          child: icon,
        ),
      ),
    );
  }
}
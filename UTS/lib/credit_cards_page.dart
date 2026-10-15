import 'package:flutter/material.dart';

class CreditCardsPage extends StatelessWidget {
  // TODO 1: GANTI VARIABEL INI DENGAN DATA DIRI ANDA
  final String namaMahasiswa = "Ito (Njoo)"; // Jangan biarkan kosong!
  final String nimMahasiswa = "20245520016"; // Jangan biarkan kosong!

  const CreditCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 2: BUAT LOGIKA KONDISIONAL BERDASARKAN NIM!
    // Aturan:
    // - Jika digit terakhir NIM Anda Ganjil: warnaKartu1 = Biru (0xFF090943), warnaKartu2 = Merah.
    // - Jika digit terakhir NIM Anda Genap: warnaKartu1 = Hitam (0xFF000000), warnaKartu2 = Hijau.
    // (Silakan tulis kode logika if-else Anda di sini sebelum return)
    final int digitTerakhir = int.parse(
      nimMahasiswa.substring(nimMahasiswa.length - 1),
    );
    final bool nimGanjil = digitTerakhir.isOdd;
    final Color warnaKartu1 = nimGanjil
        ? const Color(0xFF090943)
        : const Color(0xFF000000);
    final Color warnaKartu2 = nimGanjil ? Colors.red : Colors.green;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildTitleSection(
              title: "Rincian pembayaran",
              subTitle: "Bagaimana Anda ingin membayar?",
            ),

            const SizedBox(height: 16),

            _buildCreditCard(
              color: warnaKartu1,
              cardExpiration: "08/2026",
              cardHolder: namaMahasiswa,
              cardNumber: nimMahasiswa,
            ),

            const SizedBox(height: 15),

            _buildCreditCard(
              color: warnaKartu2,
              cardExpiration: "05/2027",
              cardHolder: namaMahasiswa,
              cardNumber: "9874 4785 XXXX 6548",
            ),

            const SizedBox(height: 20),

            Center(
              child: _buildAddCardButton(
                icon: const Icon(Icons.add),
                color: const Color(0xFF081603),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // PERINGATAN: DILARANG MENGUBAH NAMA FUNGSI DAN PARAMETER DI BAWAH INI!
  // JIKA ANDA MENGGUNAKAN AI GENERATOR SEPENUHNYA, STRUKTUR INI BIASANYA AKAN RUSAK.
  // ===========================================================================

  // TODO 3: Build the title section
  Column _buildTitleSection({required String title, required String subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 4.0, top: 8.0, bottom: 4.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF222222),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0, bottom: 8.0),
          child: Text(
            subTitle,
            style: const TextStyle(fontSize: 17, color: Colors.grey),
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
    required String cardExpiration,
  }) {
    return Card(
      color: color,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 0),
      child: Container(
        width: double.infinity,
        height: 180,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildLogosBlock(),

            const Spacer(),

            Text(
              cardNumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5,
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                _buildDetailsBlock(label: "CARDHOLDER", value: cardHolder),
                _buildDetailsBlock(label: "VALID THRU", value: cardExpiration),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // buat  top row containing logo
  Row _buildLogosBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/contact_less.png',
          width: 30,
          height: 25,
          fit: BoxFit.contain,
        ),
        Image.asset(
          'assets/images/mastercard.png',
          width: 45,
          height: 30,
          fit: BoxFit.contain,
        ),
      ],
    );
  }

  // Build column containing label and information
  Column _buildDetailsBlock({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(label, style: const TextStyle(color: Colors.white70, fontSize: 9)),
        const SizedBox(height: 3),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  // Build add-card button
  Container _buildAddCardButton({required Icon icon, required Color color}) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: IconButton(
        icon: icon,
        color: Colors.deepPurple,
        iconSize: 25,
        tooltip: 'Tambah kartu',
        onPressed: () {
          // Tombol tampilan; fitur tambah kartu belum diimplementasikan.
        },
      ),
    );
  }
}

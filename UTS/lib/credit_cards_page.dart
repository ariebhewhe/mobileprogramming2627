import 'package:flutter/material.dart';

class CreditCardsPage extends StatelessWidget {
  
  // TODO 1: GANTI VARIABEL INI DENGAN DATA DIRI ANDA
  final String namaMahasiswa = "HIGHLAND CHRISTIAN SUMADJI"; // Jangan biarkan kosong!
  final String nimMahasiswa = "20245520004"; // Jangan biarkan kosong!

  @override
  Widget build(BuildContext context) {
    
    // TODO 2: BUAT LOGIKA KONDISIONAL BERDASARKAN NIM!
    // Aturan:
    // - Jika digit terakhir NIM Anda Ganjil: warnaKartu1 = Biru (0xFF090943), warnaKartu2 = Merah.
    // - Jika digit terakhir NIM Anda Genap: warnaKartu1 = Hitam (0xFF000000), warnaKartu2 = Hijau.
    // (Silakan tulis kode logika if-else Anda di sini sebelum return)
    
    int lastDigit = int.tryParse(nimMahasiswa.characters.last) ?? 0;

    Color warnaKartu1;
    Color warnaKartu2;

    if (lastDigit % 2 != 0) {
      warnaKartu1 = const Color(0xFF090943);
      warnaKartu2 = Colors.red.shade900;
    } else {
      warnaKartu1 = const Color(0xFF000000);
      warnaKartu2 = Colors.green.shade900;
    }

    return SingleChildScrollView(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 420),
          padding: const EdgeInsets.all(16.0),
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
              
              const SizedBox(height: 15),

              Center(
                child: _buildAddCardButton(
                  icon: const Icon(Icons.add, color: Colors.white),
                  color: const Color(0xFF081603),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // PERINGATAN: DILARANG MENGUBAH NAMA FUNGSI DAN PARAMETER DI BAWAH INI!
  // JIKA ANDA MENGGUNAKAN AI GENERATOR SEPENUHNYA, STRUKTUR INI BIASANYA AKAN RUSAK.
  // ===========================================================================

  // Build the title section
  Column _buildTitleSection({required String title, required String subTitle}) {
    // TODO 3: Implementasikan UI untuk judul dan sub-judul di sini.
    // Terapkan TextStyle dengan font yang sesuai panduan.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // KODE UI ANDA DI SINI
        // padding 1 
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato',
            ),
          ),
        ),
        // padding 2
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            subTitle,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontFamily: 'Lato',
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
    // Wajib memanggil fungsi _buildLogosBlock() dan _buildDetailsBlock() di dalamnya.
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: color,
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildLogosBlock(),
            Text(
              cardNumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 2.0,
                fontFamily: 'CourrierPrime',
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildDetailsBlock(
                    label: "CARDHOLDER", value: cardHolder),
                _buildDetailsBlock(
                    label: "VALID THRU", value: cardExpiration),
              ],
            )
          ],
        ),
      ),
    );
  }

  // buat  top row containing logo
  Row _buildLogosBlock() {
    // TODO 5: Panggil asset gambar lokal "contact_less.png" dan "mastercard.png".
    // CATATAN: Atur posisi sejajar berlawanan (kiri dan kanan). 
    // AI teks tidak tahu dimensi resolusi asli gambar ini. Anda harus mengatur nilai width dan height 
    // secara manual agar gambar tidak pecah atau overflow (terpotong).
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // KODE GAMBAR ANDA DI SINI
        Image.asset(
          "assets/images/contact_less.png",
          height: 28,
          width: 28,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.wifi_tethering,
            color: Colors.white,
          ),
        ),
        Image.asset(
          "assets/images/mastercard.png",
          height: 35,
          width: 45,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.credit_card,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  // buat Column berisi kontainer dan Informasi
  Column _buildDetailsBlock(
      {required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 9,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
          ),
        ),
      ],
    );
  }

  // buat   FloatingActionButton
  Container _buildAddCardButton(
      {required Icon icon, required Color color}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: icon),
    );
  }

  // Build Column
}
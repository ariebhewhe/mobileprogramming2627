import 'package:flutter/material.dart';

class CreditCardsPage extends StatelessWidget {
  
  // TODO 1: GANTI VARIABEL INI DENGAN DATA DIRI ANDA
  final String namaMahasiswa = "Christian Winata"; // Jangan biarkan kosong!
  final String nimMahasiswa = "20245520010"; // Jangan biarkan kosong!

  @override
  Widget build(BuildContext context) {
    
    // TODO 2: BUAT LOGIKA KONDISIONAL BERDASARKAN NIM!
    // Aturan:
    // - Jika digit terakhir NIM Anda Ganjil: warnaKartu1 = Biru (0xFF090943), warnaKartu2 = Merah.
    // - Jika digit terakhir NIM Anda Genap: warnaKartu1 = Hitam (0xFF000000), warnaKartu2 = Hijau.
    // (Silakan tulis kode logika if-else Anda di sini sebelum return)
    final int digitTerakhir =
        int.parse(nimMahasiswa[nimMahasiswa.length - 1]);
    late Color warnaKartu1;
    late Color warnaKartu2;
    if (digitTerakhir % 2 == 1) {
      // Ganjil: Biru dan Merah
      warnaKartu1 = const Color(0xFF090943);
      warnaKartu2 = Colors.red;
    } else {
      // Genap: Hitam dan Hijau
      warnaKartu1 = const Color(0xFF000000);
      warnaKartu2 = Colors.green;
    }

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
              icon: const Icon(Icons.add),
              color: const Color(0xFF081603),
            )
          ],
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
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        // padding 2
        Padding(
          padding: const EdgeInsets.only(
              top: 4.0, bottom: 16.0, left: 8.0, right: 8.0),
          child: Text(
            subTitle,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
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
      color: color,
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildLogosBlock(),
            const Spacer(),
            _buildDetailsBlock(
              cardNumber: cardNumber,
              cardHolder: cardHolder,
              cardExpiration: cardExpiration,
            ),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/contact_less.png',
          width: 28.0,
          height: 28.0,
          fit: BoxFit.contain,
        ),
        Image.asset(
          'assets/images/mastercard.png',
          width: 52.0,
          height: 32.0,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
  // buat Column berisi kontainer dan Informasi
  Column _buildDetailsBlock({
    required String cardNumber,
    required String cardHolder,
    required String cardExpiration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          cardNumber,
          style: const TextStyle(
            fontFamily: 'CourrierPrime',
            fontSize: 18.0,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'CARD HOLDER',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 10.0,
                    letterSpacing: 1.0,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  cardHolder.toUpperCase(),
                  style: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'EXPIRES',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 10.0,
                    letterSpacing: 1.0,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  cardExpiration,
                  style: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  // buat   FloatingActionButton
  Widget _buildAddCardButton({required Icon icon, required Color color}) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 16.0),
        width: 52.0,
        height: 52.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Icon(
          icon.icon,
          color: Colors.white,
          size: 28.0,
        ),
      ),
    );
  }

  // Build Column
}
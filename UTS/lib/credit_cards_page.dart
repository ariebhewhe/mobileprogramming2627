import 'package:flutter/material.dart';

class CreditCardsPage extends StatelessWidget {
  
  // TODO 1: GANTI VARIABEL INI DENGAN DATA DIRI ANDA
  final String namaMahasiswa = "Charsten Richard Tewu"; // Jangan biarkan kosong!
  final String nimMahasiswa = "20245520015"; // Jangan biarkan kosong!

  @override
  Widget build(BuildContext context) {
    
    // TODO 2: BUAT LOGIKA KONDISIONAL BERDASARKAN NIM!
    // Aturan:
    // - Jika digit terakhir NIM Anda Ganjil: warnaKartu1 = Biru (0xFF090943), warnaKartu2 = Merah.
    // - Jika digit terakhir NIM Anda Genap: warnaKartu1 = Hitam (0xFF000000), warnaKartu2 = Hijau.
    // (Silakan tulis kode logika if-else Anda di sini sebelum return)  
    Color warnaKartu1;
    Color warnaKartu2;
    int digitTerakhir = int.parse(nimMahasiswa[nimMahasiswa.length - 1]);
    if (digitTerakhir % 2 != 0) {
      warnaKartu1 = const Color(0xFF090943);
      warnaKartu2 = Colors.red;
    } else {
      warnaKartu1 = const Color(0xFF000000);
      warnaKartu2 = Colors.green;
    }
    // <- Ubah agar dinamis menggunakan logika IF
    // <- Ubah agar dinamis menggunakan logika IF

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
            padding: const EdgeInsets.only(top: 16.0, bottom: 4.0, left: 12.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
        ),
        // padding 2
        Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 12.0),
            child: Text(
              subTitle,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            )
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
                fontSize: 18,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
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

  // buat  top row containing logo
  Row _buildLogosBlock() {
    // TODO 5: Panggil asset gambar lokal "contact_less.png" dan "mastercard.png".
    // CATATAN: Atur posisi sejajar berlawanan (kiri dan kanan). 
    // AI teks tidak tahu dimensi resolusi asli gambar ini. Anda harus mengatur nilai width dan height 
    // secara manual agar gambar tidak pecah atau overflow (terpotong).
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          'assets/images/contact_less.png',
          width: 28,
          height: 28,
        ),
        Image.asset(
          'assets/images/mastercard.png',
          width: 40,
          height: 30,
        ),
      ],
    );
  }
  // buat Column berisi kontainer dan Informasi
Row _buildDetailsBlock({
    required String cardHolder, 
    required String cardExpiration,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "CARDHOLDER",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                cardHolder.toUpperCase(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "VALID THRU",
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
  // buat   FloatingActionButton
  Widget _buildAddCardButton({required Icon icon, required Color color}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: IconButton(
            onPressed: () {},
            icon: icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
  // Build Column

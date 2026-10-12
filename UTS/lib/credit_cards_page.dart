import 'package:flutter/material.dart';

class CreditCardsPage extends StatelessWidget {
  
  // TODO 1: GANTI VARIABEL INI DENGAN DATA DIRI ANDA
  final String namaMahasiswa = "Vinsent"; // Jangan biarkan kosong!
  final String nimMahasiswa = "20245520013"; // Jangan biarkan kosong!

  @override
  Widget build(BuildContext context) {
    
    // TODO 2: BUAT LOGIKA KONDISIONAL BERDASARKAN NIM!
    // Aturan:
    // - Jika digit terakhir NIM Anda Ganjil: warnaKartu1 = Biru (0xFF090943), warnaKartu2 = Merah 0xFF430909.
    // - Jika digit terakhir NIM Anda Genap: warnaKartu1 = Hitam (0xFF000000), warnaKartu2 = Hijau.
    // (Silakan tulis kode logika if-else Anda di sini sebelum return)
    
    Color warnaKartu1;
    Color warnaKartu2;
    
    if (int.parse(nimMahasiswa.substring(nimMahasiswa.length - 1)) % 2 == 1) {
    
      // Digit terakhir NIM adalah Ganjil
      warnaKartu1 = Color(0xFF090943); // Biru
      warnaKartu2 = Color(0xFF430909); // Merah
    } else {
      // Digit terakhir NIM adalah Genap
      warnaKartu1 = Color(0xFF000000); // Hitam
      warnaKartu2 = Color(0xFF008000); // Hijau
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
          padding: const EdgeInsets.only(left: 8, top: 18, bottom: 4),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // padding 2
        Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 20),
          child: Text(
            subTitle,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
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
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildLogosBlock(),
            const Spacer(),
            Text(
              cardNumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 18),
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
        // KODE GAMBAR ANDA DI SINI
        Image.asset(
          'assets/images/contact_less.png',
          width: 34,
          height: 34,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) => const Icon(
            Icons.contactless,
            color: Colors.white,
            size: 30,
          ),
        ),
        Image.asset(
          'assets/images/mastercard.png',
          width: 58,
          height: 38,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) => const Icon(
            Icons.credit_card,
            color: Colors.white,
            size: 34,
          ),
        ),
      ],
    );
  }
  // buat Column berisi kontainer dan Informasi

  // buat   FloatingActionButton
  
  // Build Column

Row _buildDetailsBlock({
    required String cardHolder,
    required String cardExpiration,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        _buildCardDetail(label: 'CARDHOLDER', value: cardHolder),
        _buildCardDetail(label: 'VALID THRU', value: cardExpiration),
      ],
    );
  }

  Column _buildCardDetail({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 9),
        ),
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

  // TODO 7: Buat tombol untuk menambahkan kartu baru.
  Widget _buildAddCardButton({required Icon icon, required Color color}) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 18),
      child: Center(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: color,
          foregroundColor: Colors.white,
          tooltip: 'Tambah kartu',
          child: icon,
        ),
      ),
    );
  }
}

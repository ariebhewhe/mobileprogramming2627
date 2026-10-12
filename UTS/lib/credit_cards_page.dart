import 'package:flutter/material.dart';

class CreditCardsPage extends StatelessWidget {
  
  // TODO 1: GANTI VARIABEL INI DENGAN DATA DIRI ANDA
  final String namaMahasiswa = "Vanesson Ryouji"; // Jangan biarkan kosong!
  final String nimMahasiswa = "20245520003"; // Jangan biarkan kosong!

  @override
  Widget build(BuildContext context) {
    
    // TODO 2: BUAT LOGIKA KONDISIONAL BERDASARKAN NIM!
    // Aturan:
    // - Jika digit terakhir NIM Anda Ganjil: warnaKartu1 = Biru (0xFF090943), warnaKartu2 = Merah.
    // - Jika digit terakhir NIM Anda Genap: warnaKartu1 = Hitam (0xFF000000), warnaKartu2 = Hijau.
    // (Silakan tulis kode logika if-else Anda di sini sebelum return)
    
    
      int LastNim = int.tryParse(nimMahasiswa) ?? 0;
        if  (LastNim % 2 != 0) { 
          Color warnaKartu1 = Color(0xFF090943); // <- Ubah agar dinamis menggunakan logika IF
          Color warnaKartu2 = Color.fromARGB(255, 86, 11, 11); // <- Ubah agar dinamis menggunakan logika IF
          } else {
            Color warnaKartu1 = Color(0xFF000000); // <- Ubah agar dinamis menggunakan logika IF
            Color warnaKartu2 = Color.fromARGB(255, 16, 60, 11); // <- Ubah agar dinamis menggunakan logika IF
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
        //padding1
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //padding2
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Text(
            subTitle,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black54,
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
      child: Container(
        height: 200,
        // KODE UI ANDA DI SINI
        child: const Center(child: Text("UI Kartu belum dibuat...")),
      ),
    );
  }

  _buildAddCardButton(){
    Icon;
    Color;
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
      ],
    );
  }
  // buat Column berisi kontainer dan Informasi

  // buat   FloatingActionButton
  
  // Build Column
}
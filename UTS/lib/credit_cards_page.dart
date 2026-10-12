import 'package:flutter/material.dart';

class CreditCardsPage extends StatelessWidget {
  // TODO 1: GANTI VARIABEL INI DENGAN DATA DIRI ANDA
  final String namaMahasiswa = "Jonathan Sutanto"; // Jangan biarkan kosong!
  final String nimMahasiswa = "20245520005"; // Jangan biarkan kosong!

  @override
  Widget build(BuildContext context) {
    // TODO 2: BUAT LOGIKA KONDISIONAL BERDASARKAN NIM!
    // Aturan:
    // - Jika digit terakhir NIM Anda Ganjil: warnaKartu1 = Biru (0xFF090943), warnaKartu2 = Merah.
    // - Jika digit terakhir NIM Anda Genap: warnaKartu1 = Hitam (0xFF000000), warnaKartu2 = Hijau.
    // (Silakan tulis kode logika if-else Anda di sini sebelum return)
    final int nim = int.parse(nimMahasiswa);
    final bool nimGanjil = nim % 2 != 0;

    final Color warnaKartu1 =
        nimGanjil ? const Color(0xFF090943) : const Color(0xFF000000);

    final Color warnaKartu2 =
        nimGanjil ? const Color(0xFFFF0000) : const Color(0xFF00FF22);

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
          padding: const EdgeInsets.only(top: 20, bottom: 8),
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
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            subTitle,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}

// Build the credit card widget
Card _buildCreditCard(
    {required Color color,
    required String cardNumber,
    required String cardHolder,
    required String cardExpiration}) {
  // TODO 4: Bangun UI kartu kredit di sini.
    // Wajib memanggil fungsi _buildLogosBlock() dan _buildDetailsBlock() di dalamnya.
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        height: 200,
        width: double.infinity,
        padding: const EdgeInsets.all(20),

        // KODE UI ANDA DI SINI
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogosBlock(),

            Text(
              cardNumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 2,
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

  Row _buildLogosBlock() {
    // TODO 5: Panggil asset gambar lokal "contact_less.png" dan "mastercard.png".
    // CATATAN: Atur posisi sejajar berlawanan (kiri dan kanan).
    // AI teks tidak tahu dimensi resolusi asli gambar ini. Anda harus mengatur nilai width dan height
    // secara manual agar gambar tidak pecah atau overflow (terpotong).
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // KODE GAMBAR ANDA DI SINI
        const Icon(
          Icons.contactless,
          color: Colors.white,
          size: 32,
        ),
        const Icon(
          Icons.credit_card,
          color: Colors.white,
          size: 36,
        ),
      ],
    );
  }

  // buat Column berisi kontainer dan Informasi
  Column _buildDetailsBlock({
    required String cardHolder,
    required String cardExpiration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'CARD HOLDER',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    cardHolder,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
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
                const Text(
                  'EXPIRES',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 10,
                  ),
                ),
                Text(
                  cardExpiration,
                  style: const TextStyle(
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

  // buat FloatingActionButton
  Widget _buildAddCardButton({
    required Icon icon,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton.icon(
          onPressed: () {},
          icon: icon,
          label: const Text('Tambah Kartu'),
          style: OutlinedButton.styleFrom(
            foregroundColor: color,
            side: BorderSide(color: color),
            padding: const EdgeInsets.all(14),
          ),
        ),
      ),
    );
  }

  // Build Column

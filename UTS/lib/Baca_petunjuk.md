# Ujian Tengah Semester - Mobile Programming 📱

Selamat datang di repositori Ujian Tengah Semester (UTS) mata kuliah Mobile Programming. Repositori ini berisi *starter code* (kode awal) untuk soal ujian praktik pengembangan antarmuka (UI) aplikasi menggunakan Flutter.

---

## 🛠️ 1. Persiapan Awal (Setup)
Karena pengumpulan tugas menggunakan sistem *Pull Request*, ikuti langkah berikut dengan teliti:
1. Klik tombol **Fork** di pojok kanan atas halaman repositori ini untuk menyalin repositori ke akun GitHub Anda sendiri.
2. Lakukan *clone* repositori hasil *fork* tersebut ke laptop Anda:
   `git clone https://github.com/USERNAME_ANDA/mobileprogramming2627.git`
3. Buka folder proyek di IDE pilihan Anda (disarankan VS Code).
4. Buka terminal di dalam IDE, lalu jalankan perintah `flutter pub get` untuk mengunduh *library* dan mendaftarkan aset (gambar/font).
5. Pastikan perangkat emulator atau *smartphone* fisik Anda sudah terhubung, lalu jalankan aplikasi dengan perintah `flutter run`.

---

## 📝 2. Petunjuk Pengerjaan Soal
Tugas Anda adalah melengkapi antarmuka aplikasi kartu kredit agar sesuai dengan rancangan (*wireframe*) yang telah diberikan. Buka file `lib/credit_cards_page.dart` dan selesaikan instruksi berikut:

1. **Identitas Diri (Wajib):** Cari `TODO 1` di dalam kode. Ganti nilai variabel dummy dengan **Nama Lengkap** dan **NIM** asli Anda.
2. **Logika Warna Kartu (NIM):** Cari `TODO 2`. Anda wajib membuat logika kondisional (If-Else) berdasarkan digit terakhir NIM Anda:
   * Jika digit terakhir **Ganjil**: Kartu pertama berwarna Biru (`0xFF090943`) dan kartu kedua berwarna Merah.
   * Jika digit terakhir **Genap**: Kartu pertama berwarna Hitam (`0xFF000000`) dan kartu kedua berwarna Hijau.
3. **Penyusunan Komponen UI:** Cari `TODO 3` hingga `TODO 7`. Lengkapi fungsi-fungsi UI yang masih kosong (seperti `_buildTitleSection`, `_buildCreditCard`, dll) menggunakan *widget* bawaan Flutter (`Column`, `Row`, `Text`, `Padding`, dll).
4. **Presisi Aset Gambar:** Pada `TODO 5`, Anda harus menampilkan gambar `contact_less.png` dan `mastercard.png` dari folder lokal. Atur tata letak dan dimensinya (width/height) agar proporsional dan tidak *overflow* (terpotong).

---

## ⚠️ 3. Aturan Ujian & Syarat Kelulusan (PENTING!)
Ujian ini menguji pemahaman orisinal Anda. Penggunaan AI Generatif (ChatGPT, Copilot, dsb) secara instan **sangat dilarang** dan akan otomatis terdeteksi. Patuhi aturan berikut:

* **Riwayat Commit Bertahap:** Anda WAJIB melakukan minimal **5 commit** secara bertahap selama pengerjaan (misal: commit setelah selesai membuat logika NIM, commit setelah selesai bagian judul, dsb). Jika hanya terdapat 1 atau 2 *commit* masif di akhir waktu, pekerjaan **TIDAK AKAN DINILAI**.
* **Dilarang Mengubah Struktur Fungsi:** Anda **TIDAK BOLEH** menghapus nama fungsi bantuan (*helper method*) atau mengubah parameternya. Anda hanya boleh mengisi kode di dalam blok fungsi tersebut. Menyalin kode utuh dari AI biasanya akan merusak struktur ini.
* **Dilarang Menghapus Folder `.vscode`:** Repositori ini sudah dilengkapi pengaturan ruang kerja (*workspace settings*). Dilarang menghapus atau memodifikasi file di dalam folder `.vscode`. Penghapusan folder ini dianggap sebagai indikasi kecurangan.

---

## 📤 4. Cara Pengumpulan Tugas (Pull Request)
Setelah Anda selesai mengerjakan dan memastikan aplikasi berjalan tanpa *error*:

1. Pastikan semua perubahan sudah di-*commit*.
2. Lakukan *push* ke repositori GitHub hasil *fork* Anda:
   `git push origin main` *(atau `Soal_UTS` tergantung nama branch Anda)*
3. Buka halaman repositori Anda di *browser* (GitHub).
4. Klik tab **Pull requests**, lalu klik tombol hijau **New pull request**.
5. Pastikan Anda mengarahkan PR dari repositori Anda ke repositori utama milik Dosen.
6. **FORMAT JUDUL PR WAJIB:** `UTS - Nama Lengkap - NIM` 
   *(Contoh: UTS - Budi Santoso - 20230001)*
7. Klik **Create pull request**. Pastikan statusnya berubah menjadi *Open*.

Selamat mengerjakan dan semoga sukses!
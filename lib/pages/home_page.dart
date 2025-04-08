import 'package:flutter/material.dart'; // Import package Flutter untuk komponen UI

// Kelas StatelessWidget yang tidak berubah selama runtime
class HomePage extends StatelessWidget {
  final String username; // Variabel untuk menyimpan nama pengguna yang login

  // Constructor wajib dengan parameter username
  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold: kerangka dasar dari halaman
      backgroundColor: Color(0xFF2B2B2B), // Warna latar belakang halaman (gelap)

      appBar: AppBar( // Bagian atas halaman (AppBar)
        backgroundColor: Color(0xFF2B2B2B), // Warna app bar disamakan dengan background
        elevation: 0, // Hilangkan bayangan bawah AppBar (biar flat)
        title: Text(
          'SELAMAT DATANG $username', // Teks judul AppBar yang menampilkan nama user
          style: TextStyle(
            color: Colors.white, // Warna teks putih
            fontSize: 24, // Ukuran teks
            fontWeight: FontWeight.bold, // Teks ditebalkan
          ),
        ),
      ),

      body: Center( // Isi halaman berada di tengah
        child: Column( // Gunakan Column untuk susunan vertikal
          mainAxisAlignment: MainAxisAlignment.center, // Pusatkan secara vertikal
          children: [
            Text(
              'SELAMAT DATANG $username', // Ucapan selamat datang ulang di body
              style: TextStyle(
                color: Colors.white, // Warna teks
                fontSize: 24, // Ukuran teks
                fontWeight: FontWeight.bold, // Teks ditebalkan
              ),
              textAlign: TextAlign.center, // Teks rata tengah
            ),

            SizedBox(height: 20), // Spasi vertikal 20 piksel

            Container( // Kotak untuk teks info quiz
              padding: EdgeInsets.all(20), // Jarak dalam kotak
              decoration: BoxDecoration(
                color: Colors.blue[100], // Warna background kotak
                borderRadius: BorderRadius.circular(10), // Sudut kotak dibuat membulat
              ),
              child: Text(
                'Sudah siap mulai quizmu?!', // Teks motivasi
                style: TextStyle(
                  color: Colors.black, // Warna teks hitam
                  fontSize: 20, // Ukuran teks
                ),
                textAlign: TextAlign.center, // Teks rata tengah
              ),
            ),

            SizedBox(height: 20), // Spasi sebelum tombol

            ElevatedButton( // Tombol mulai quiz
              onPressed: () { 
                Navigator.pushNamed(context, '/quiz'); // Navigasi ke halaman quiz saat ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF00E676), // Warna hijau cerah
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Padding tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Tombol berbentuk kapsul
                ),
              ),
              child: Text(
                'MULAI', // Teks tombol
                style: TextStyle(
                  color: Colors.black, // Warna teks tombol
                  fontWeight: FontWeight.bold, // Teks ditebalkan
                  fontSize: 18, // Ukuran teks
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart'; // Import library Flutter untuk membuat UI

// LoginPage menggunakan StatefulWidget karena kita ingin menangani perubahan state (input pengguna)
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState(); // Membuat state dari LoginPage
}

// Kelas state untuk LoginPage
class _LoginPageState extends State<LoginPage> {
  // Controller untuk mengambil nilai dari TextField
  final TextEditingController _nameController = TextEditingController();

  // Fungsi login yang dipanggil saat tombol ditekan
  void _login() {
    String username = _nameController.text; // Ambil nilai dari TextField
    if (username.isNotEmpty) { // Jika tidak kosong
      Navigator.pushReplacementNamed( // Navigasi ke halaman home, menggantikan halaman login
        context, 
        '/home', 
        arguments: username, // Kirim nama user sebagai argumen
      );
    }
  }

  // Widget utama halaman login
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold = kerangka dasar UI halaman
      backgroundColor: Color(0xFF5F4B8B), // Warna latar belakang ungu

      body: Center( // Posisikan konten di tengah halaman
        child: Padding(
          padding: const EdgeInsets.all(32.0), // Tambahkan padding agar tidak terlalu rapat ke tepi
          child: Column( // Susun elemen secara vertikal
            mainAxisAlignment: MainAxisAlignment.center, // Pusatkan elemen secara vertikal
            children: [
              Text(
                'SELAMAT DATANG\nMAHASISWA BARU', // Teks judul
                textAlign: TextAlign.center, // Rata tengah
                style: TextStyle(
                  fontSize: 28, // Ukuran teks
                  fontWeight: FontWeight.bold, // Tebal
                  color: Colors.white, // Warna putih
                ),
              ),
              SizedBox(height: 40), // Jarak vertikal

              // Container untuk membungkus TextField
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding dalam kotak
                decoration: BoxDecoration(
                  color: Color(0xFF66CCFF), // Warna latar biru muda
                  borderRadius: BorderRadius.circular(20), // Sudut membulat
                ),
                child: TextField(
                  controller: _nameController, // Controller untuk ambil input user
                  textAlign: TextAlign.center, // Rata tengah
                  style: TextStyle(color: Colors.white, fontSize: 18), // Gaya teks input
                  decoration: InputDecoration(
                    border: InputBorder.none, // Hilangkan border
                    hintText: 'Masukan namamu', // Placeholder teks
                    hintStyle: TextStyle(color: Colors.white70), // Warna hint
                  ),
                ),
              ),

              SizedBox(height: 30), // Spasi sebelum tombol

              // Tombol LOGIN
              ElevatedButton(
                onPressed: _login, // Jalankan fungsi _login saat ditekan
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF00FFAB), // Warna tombol hijau muda
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12), // Ukuran padding tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Tombol membulat
                  ),
                ),
                child: Text(
                  'LOGIN', // Teks tombol
                  style: TextStyle(
                    color: Colors.black, // Warna teks hitam
                    fontSize: 20, // Ukuran teks
                    fontWeight: FontWeight.bold, // Teks ditebalkan
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

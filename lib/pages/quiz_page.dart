import 'package:flutter/material.dart';
import '../models/quiz_brain.dart';
import '../data/question.dart';

// Inisialisasi objek QuizBrain
QuizBrain quizBrain = QuizBrain();

// Widget Stateful untuk halaman kuis
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState(); // Buat state-nya
}

// State dari halaman kuis
class _QuizPageState extends State<QuizPage> {
  @override
  void initState() {
    super.initState();
    quizBrain.setQuestions(questionBank); // Set daftar soal ke quizBrain
  }

  // Fungsi ketika jawaban dipilih
  void _answerQuestion(int selectedIndex) {
    setState(() {
      quizBrain.checkAnswer(selectedIndex); // Cek jawaban
      if (quizBrain.isFinished()) { // Jika soal selesai
        // Arahkan ke halaman hasil dan kirim skor
        Navigator.pushReplacementNamed(context, '/result', arguments: quizBrain.score);
        quizBrain.reset(); // Reset kuis
      } else {
        quizBrain.nextQuestion(); // Lanjut ke soal berikutnya
      }
    });
  }

  // Tampilan UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, // Warna latar belakang
      appBar: AppBar(
        title: Text('Kuis'), // Judul AppBar
        backgroundColor: Colors.grey, // Warna AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding seluruh body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Posisi di tengah vertikal
          children: [
            // Teks ucapan semangat
            Text(
              'SEMOGA SUKSES!!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Jarak

            // Tampilan pertanyaan
            Container(
              decoration: BoxDecoration(
                color: Colors.blue, // Warna background kontainer
                borderRadius: BorderRadius.circular(12), // Sudut melengkung
              ),
              padding: const EdgeInsets.all(16.0), // Padding dalam kontainer
              child: Text(
                quizBrain.currentQuestion.questionText, // Teks soal
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20), // Jarak

            // Menampilkan semua opsi jawaban sebagai tombol
            ...quizBrain.currentQuestion.options.asMap().entries.map((entry) {
              int index = entry.key; // Index jawaban
              String option = entry.value; // Teks jawaban

              return Container(
                margin: const EdgeInsets.only(bottom: 16), // Jarak antar tombol
                child: ElevatedButton(
                  onPressed: () => _answerQuestion(index), // Saat tombol ditekan
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _getButtonColor(index), // Warna tombol berdasarkan index
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Tombol membulat
                    ),
                  ),
                  child: Text(
                    option, // Isi teks tombol
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              );
            }).toList(), // Convert ke list widget
          ],
        ),
      ),
    );
  }

  // Fungsi untuk mendapatkan warna tombol berdasarkan index
  Color _getButtonColor(int index) {
    switch (index) {
      case 0:
        return Colors.green; // Opsi pertama hijau
      case 1:
        return Colors.purple; // Opsi kedua ungu
      case 2:
        return Colors.pink; // Opsi ketiga pink
      case 3:
        return Colors.black; // Opsi keempat hitam
      default:
        return Colors.blue; // Warna default jika lebih dari 4
    }
  }
}

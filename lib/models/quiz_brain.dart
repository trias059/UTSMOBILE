import 'question.dart'; // Mengimpor class Question dari file question.dart

// Class yang mengatur logika kuis
class QuizBrain {
  int _currentQuestionIndex = 0; // Menyimpan indeks pertanyaan saat ini (dimulai dari 0)
  int _score = 0; // Menyimpan skor atau jumlah jawaban benar
  List<Question> _questions = []; // Menyimpan daftar pertanyaan (soal) dalam bentuk List<Question>

  // Method untuk mengisi list pertanyaan dari luar questionBank
  void setQuestions(List<Question> questions) {
    _questions = questions;
  }

  // Getter untuk mengambil pertanyaan yang sedang aktif berdasarkan _currentQuestionIndex
  Question get currentQuestion => _questions[_currentQuestionIndex];

  // Method untuk pindah ke pertanyaan berikutnya
  void nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++; // Naikkan indeks jika belum sampai pertanyaan terakhir
    }
  }

  // Method untuk memeriksa apakah jawaban yang dipilih benar
  void checkAnswer(int selectedIndex) {
    if (selectedIndex == currentQuestion.correctAnswerIndex) {
      _score++; // Tambah skor jika jawaban benar
    }
  }

  // Getter untuk mengambil nilai skor saat ini
  int get score => _score;

  // Method untuk mengecek apakah kuis sudah selesai (sampai soal terakhir)
  bool isFinished() {
    return _currentQuestionIndex >= _questions.length - 1;
  }

  // Method untuk mereset kuis ke awal (digunakan saat mengulang kuis)
  void reset() {
    _currentQuestionIndex = 0; // Kembali ke pertanyaan pertama
    _score = 0; // Reset skor ke 0
  }
}

'../models/question.dart'; //Mengimpor class Question dari file question.dart (file yang mengelola logika soal).

List<Question> questionBank = [
  Question(
    questionText: 'Apa nama Fakultas yang di tempati Manajemen Infromatika?', //pertanyaan dalam bentuk String
    options: ['Psikologi', 'FIB', 'Vokasi', 'FMIPA'], //daftar jawaban yang bisa dipilih (dalam bentuk List<String>
    correctAnswerIndex: 2, //indeks jawaban yang benar dari List options
  ),
  Question(
    questionText: 'Siapa yang memimpin Fakultas?',
    options: ['Dekan', 'Rektor', 'Staff', 'Dosen'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Apa nama Himpunan rumpun informatika?',
    options: ['HIMAFORTIC', 'BEM U', 'PERRUMTIC', 'ORMAWA'],
    correctAnswerIndex: 0,
  ),
  Question(questionText: 'Dimana kita bisa melakukan koding?',
    options: ['Kanva', 'Teks Editor', 'Google', 'WhatsApp'],
    correctAnswerIndex: 1,
  ),
  Question(questionText: 'Pilih salah satu yang merupakan game angine!',
      options: ['Blender', 'FireFox', 'Unreal Angine', 'SQL'],
      correctAnswerIndex: 2,
  ),
  Question(questionText: 'Berapa lama seorang mahasiswa menempuh Program studi D4?',
      options: ['5 Bulan',  '1 Tahun', '3 Tahun', '4 Tahun'],
      correctAnswerIndex: 3,
  ),
  Question(questionText: 'Siapa pemimpin unesa Sekarang?',
      options: ['Cak Hasan', 'Pak Agung', 'Pak Hafisd', 'Pak Andi'],
      correctAnswerIndex: 0,
  ),
  Question(questionText: 'Pilih salah satu brand processor!',
      options: ['Invidia', 'AMD', 'Lenovo', 'Kingston'], 
      correctAnswerIndex: 2,
  ),
  Question(questionText: 'Mana yang termasuk database lenguages?', 
      options: ['SQL', 'Python', 'C++', 'C#'], 
      correctAnswerIndex: 0,
  ),
  Question(questionText: 'Aplikasi layanan yang biasa menyediakan jadwal kuliah disebut?',
      options: ['MongiDB', 'Siakad', 'AWS', 'GCP'],
      correctAnswerIndex: 1,
  ),
];

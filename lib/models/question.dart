class Question { // class soal
  String questionText; // question berbentuk string
  List<String> options;// list string yang memungkin menyimpan opsi lebih dari 1
  int correctAnswerIndex;// penentuan jawaban yang benar

  Question({required this.questionText, required this.options, required this.correctAnswerIndex});
}

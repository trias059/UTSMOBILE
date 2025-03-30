import 'question.dart';

class QuizBrain {
  int _currentQuestionIndex = 0;
  int _score = 0;
  List<Question> _questions = [];

  void setQuestions(List<Question> questions) {
    _questions = questions;
  }

  Question get currentQuestion => _questions[_currentQuestionIndex];

  void nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
    }
  }

  void checkAnswer(int selectedIndex) {
    if (selectedIndex == currentQuestion.correctAnswerIndex) {
      _score++;
    }
  }

  int get score => _score;

  bool isFinished() {
    return _currentQuestionIndex >= _questions.length - 1;
  }

  void reset() {
    _currentQuestionIndex = 0;
    _score = 0;
  }
}

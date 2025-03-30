import 'package:flutter/material.dart';
import '../models/quiz_brain.dart';
import '../data/question.dart';

QuizBrain quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  void initState() {
    super.initState();
    quizBrain.setQuestions(questionBank);
  }

  void _answerQuestion(int selectedIndex) {
    setState(() {
      quizBrain.checkAnswer(selectedIndex);
      if (quizBrain.isFinished()) {
        Navigator.pushReplacementNamed(context, '/result', arguments: quizBrain.score);
        quizBrain.reset();
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, // Background color
      appBar: AppBar(
        title: Text('Kuis'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title Text
            Text(
              'SEMOGA SUKSES!!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Question Text
            Container(
              decoration: BoxDecoration(
                color: Colors.blue, // Container background
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Text(
                quizBrain.currentQuestion.questionText,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),

            // Options
            ...quizBrain.currentQuestion.options.asMap().entries.map((entry) {
              int index = entry.key;
              String option = entry.value;

              return Container(
                margin: const EdgeInsets.only(bottom: 16), // Space between buttons
                child: ElevatedButton(
                  onPressed: () => _answerQuestion(index),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _getButtonColor(index), // Color based on index
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Rounded buttons
                    ),
                  ),
                  child: Text(
                    option,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Color _getButtonColor(int index) {
    switch (index) {
      case 0:
        return Colors.green; // First option color
      case 1:
        return Colors.purple; // Second option color
      case 2:
        return Colors.pink; // Third option color
      case 3:
        return Colors.black; // Fourth option color
      default:
        return Colors.blue; // Fallback color
    }
  }
}

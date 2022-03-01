import 'package:quizzler_flutter/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _correctAnswer = 0;
  int get correctAns => _correctAnswer;
  int get questionBank => _questionBank.length;

  final List<Question> _questionBank = [
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        answer: true),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        answer: false),
    Question(questionText: 'A slug\'s blood is green.', answer: false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText!;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer!;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that
  //checks to see if we have reached the last question.
  //It should return (have an output) true if we've reached the last question
  // and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 3 Part B - Use a print statement to check that isFinished
  //is returning true when you are indeed at the end of the quiz and when
  //a restart should happen.

  //TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }

  void correctAnswer() {
    _correctAnswer++;
  }
}

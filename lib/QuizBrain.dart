import 'package:quizzler/Question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug \'s blood is green ', a: true),
    Question(
        q: 'A balanced health is comprised of balanced diet, positive relationships, and positive attitudes',
        a: true),
    Question(
        q: 'FITT stands for frequency, intensity, training, and type',
        a: false),
    Question(
        q: 'Carbohydrates are a major source of energy for your body.',
        a: true),
    Question(
        q: 'Liquid protein diets are a safe way go lose weight permanently',
        a: false),
    Question(
        q: 'Your mental health can change day to day  hour to hour but everyone has mental health',
        a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

//TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print(' You have an output');
      return true;
    } else {
      return false;
    }
  }

//TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}

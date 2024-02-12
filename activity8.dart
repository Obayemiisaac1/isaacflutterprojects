//Create a Dart class for a simple quiz game. Include methods to display questions, accept user input, and evaluate answers.


Import ‘dart:io’;

Class QuizGame {
  List<String> questions;
  List<String> correctAnswers;

  QuizGame(this.questions, this.correctAnswers);

  Void displayQuestion(int index) {
    If (index >= 0 && index < questions.length) {
      Print(“Question ${index + 1}: ${questions[index]}”);
    } else {
      Print(“Invalid question index.”);
    }
  }

  Void acceptUserInput() {
    Stdout.write(“Your answer: “);
    String userAnswer = stdin.readLineSync()!;
    evaluateAnswer(userAnswer);
  }

  Void evaluateAnswer(String userAnswer) {
    Int currentQuestionIndex = correctAnswers.length – 1;
    If (currentQuestionIndex >= 0 && currentQuestionIndex < questions.length) {
      String correctAnswer = correctAnswers[currentQuestionIndex];
      If (userAnswer.toLowerCase() == correctAnswer.toLowerCase()) {
        Print(“Correct!”);
      } else {
        Print(“Incorrect. The correct answer is: $correctAnswer”);
      }
    } else {
      Print(“No more questions available.”);
    }
  }

  Void startQuiz() {
    For (int I = 0; I < questions.length; i++) {
      displayQuestion(i);
      acceptUserInput();
    }
    Print(“Quiz completed!”);
  }
}

Void main() {
  List<String> questions = [
    “What is the capital of France?”,
    “What is the largest planet in our solar system?”,
    “Who wrote ‘Romeo and Juliet’?”
  ];

  List<String> correctAnswers = [“Paris”, “Jupiter”, “William Shakespeare”];

  QuizGame quiz = QuizGame(questions, correctAnswers);
  Quiz.startQuiz();
}
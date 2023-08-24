import 'package:flutter/material.dart';
import 'package:quizzo/data/questions.dart';
import 'package:quizzo/questions_screen.dart';
import 'package:quizzo/start_page.dart';
import 'package:quizzo/results_screen.dart';

var activeScreen = 'start-screen';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  // var activeScreen = 'start-screen';
  //Widget? activeScreen;
  // @override
  // void initState() {
  // activeScreen = StartPage(switchScreen);
  // super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        //selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartPage(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              //colors: color,
              colors: [
            Color.fromARGB(255, 59, 18, 129),
            Color.fromARGB(255, 143, 105, 209)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      //child: activeScreen
      child: screenWidget,
    )));
  }
}

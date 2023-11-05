import 'package:flutter/material.dart';
import 'package:quizzo/data/questions.dart';
import 'package:quizzo/questions_screen.dart';
import 'package:quizzo/start_page.dart';
import 'package:quizzo/results_screen.dart';

var activeScreen = 'start-screen';
var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 9, 99, 125),
  brightness: Brightness.dark,
);

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

    // return (MaterialApp(
    //     darkTheme: ThemeData.dark().copyWith(
    //       useMaterial3: true,
    //       colorScheme: kDarkColorScheme,
    //       cardTheme: const CardTheme().copyWith(
    //         color: kDarkColorScheme.secondaryContainer,
    //         margin: const EdgeInsets.symmetric(
    //           horizontal: 16,
    //           vertical: 8,
    //         ),
    //       ),
    //       elevatedButtonTheme: ElevatedButtonThemeData(
    //         style: ElevatedButton.styleFrom(
    //           backgroundColor: kDarkColorScheme.primaryContainer,
    //           foregroundColor: kDarkColorScheme.onPrimaryContainer,
    //         ),
    //       ),
    //     ),
    //     theme: ThemeData().copyWith(
    //         useMaterial3: true,
    //         colorScheme: kColorScheme,
    //         appBarTheme: const AppBarTheme().copyWith(
    //           backgroundColor: kColorScheme.onPrimaryContainer,
    //           foregroundColor: kColorScheme.primaryContainer,
    //         ),
    //         cardTheme: const CardTheme().copyWith(
    //           color: kColorScheme.secondaryContainer,
    //           margin: const EdgeInsets.symmetric(
    //             horizontal: 16,
    //             vertical: 8,
    //           ),
    //         ),
    //         elevatedButtonTheme: ElevatedButtonThemeData(
    //           style: ElevatedButton.styleFrom(
    //             backgroundColor: kColorScheme.primaryContainer,
    //           ),
    //         ),
    //         textTheme: ThemeData().textTheme.copyWith(
    //               titleLarge: TextStyle(
    //                 fontWeight: FontWeight.bold,
    //                 color: kColorScheme.onSecondaryContainer,
    //                 fontSize: 16,
    //               ),
    //             )          // scaffoldBackgroundColor: Color.fromARGB(255, 224, 147, 238),
    //         ),
    //         home: Scaffold(
    //           body: screenWidget,
    //         )
    //         ));

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

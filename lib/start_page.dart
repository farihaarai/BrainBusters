import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          //height: 400,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        // Opacity(
        // opacity: 0.6,
        // child: Image.asset(
        // 'assets/images/quiz-logo.png',
        // width: 300,
        // height: 400,
        // ),
        // ),
        const SizedBox(height: 30),
        Text(
          'Want to test your knowlegde! Take a Quizzz!! ',
          style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            //onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              //backgroundColor: Colors.black
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'))
//TextButton(
//onPressed: () {},
//style: TextButton.styleFrom(
//foregroundColor: Colors.deepPurple,
//backgroundColor: Colors.black),
//child: const Text('Start Quiz'),
//)
      ]),
    );
  }
}

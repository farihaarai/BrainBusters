import 'package:quizzo/models/quiz_question.dart';

var questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'Who developed flutter framework and continues to maintain it today?',
    [
      'Google()',
      'Microsoft()',
      'Oracle()',
      'Facebook()',
    ],
  ),
  QuizQuestion(
    'True or False: Flutter boasts improved runtime performance over most application frameworks.',
    [
      'True()',
      'False()',
    ],
  ),
  QuizQuestion(
    'pubspec.yaml file does not contain?',
    [
      'Project Language()',
      'Project Dependencies()',
      'Project General Settings()',
      'Project assets()',
    ],
  ),
  QuizQuestion(
    'Which of the following widget is used for layout?',
    [
      'Column()',
      'Text()',
      'Expanded()',
      'Inkwell()',
    ],
  ),
  QuizQuestion(
    '___________ Component allow us to specify the distance between widgets on the screen?',
    [
      'SizedBox()',
      'AppBar()',
    ],
  ),
  QuizQuestion(
    'Everything is a widget in flutter.True or False?',
    [
      'True()',
      'False()',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the runApp() function in flutter?',
    [
      'To start the flutter application()',
      'To define the layout of flutter interface()',
      'To handle user input()',
      'To manage the state of the application()',
    ],
  ),
  //Here you can add as many questions you want
];

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './quiz.dart';
import './result.dart';
import 'provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'Welcome to the Mental Heath Assessment Quiz',
      'answers': [
        {'text': 'Start Quiz', 'score': 0},
      ],
    },
    {
      'questionText':
          'Overall Mental Wellbeing:\n\nQ1. Do you have Little interest or pleasure in doing things?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q2.How often do you find yourself Feeling down, depressed, or hopeless?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q3. Do you have Trouble falling or staying asleep, or sleeping too much>',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q4. If you have had any problematic days where you felt down, how difficult have these problems made it for you at work, home, school, or with other people',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Anxiety:\n\n Q5. Do you have difficulty unwinding or feel often on the go?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q6. Do you have difficulty concentrating on people when they are speaking to you?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText': 'Q7. Do you have trouble controlling your worries?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q8. Do you get irritable and/or easily annoyed when anxious?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q9. Do you experience strong fear that causes panic, shortness of breath, chest pains, a pounding heart, sweating, shaking, nausea, dizziness and/or fear of dying?',
      'answers': [
        {'text': 'Never', 'score': 5},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Sometimes', 'score': 3},
        {'text': 'Frequently', 'score': 2},
        {'text': 'Always', 'score': 1}
      ],
    },
    {
      'questionText':
          'Social Anxiety:\n\nQ10. How often do you feel isolated or left out?',
      'answers': [
        {'text': 'Never', 'score': 5},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Sometimes', 'score': 3},
        {'text': 'Frequently', 'score': 2},
        {'text': 'Always', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q11. At times I am GREATLY interested in being with people and at other times I just want to be left alone with my thoughts.',
      'answers': [
        {'text': 'Never', 'score': 5},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Sometimes', 'score': 3},
        {'text': 'Frequently', 'score': 2},
        {'text': 'Always', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q12. Do you feel anxious or panicky before social situations?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Do you fear that you will be negatively evaluated by others when in social situations?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q14 .Do you experience significant worrying about being in certain social situations which is out of proportion to the threat posed by the social situation?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q15 .How often do you find yourself Feeling distant or cut off from other people?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q16 .How often do you find yourself Feeling irritable or having angry outbursts?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q17 .How often do you find yourself Having difficulty concentrating?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q18 .Are your work life, home life, social life, and/or relationships affected by your anxiety?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Digital Health:\n\n Q19 .When using the internet do you find that you lose track of time and feel surprised when you realize the time spent surfing the web?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q20 .Do you find yourself using the internet in specific situations where it might be less appropriate? For example, at school during class, while at work despite rules against it, during a ceremony (funeral/wedding/service), at a theater during a concert/play/movie, etc.',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
    {
      'questionText':
          'Q21 .Do you find yourself being unable to focus after using digital devices for a significant amount of time?',
      'answers': [
        {'text': '5 Points', 'score': 5},
        {'text': '4 Points', 'score': 4},
        {'text': '3 Points', 'score': 3},
        {'text': '2 Points', 'score': 2},
        {'text': '1 Point', 'score': 1}
      ],
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  int menwel = 0;
  int anx = 0;

  int socanx = 0;

  int dighel = 0;

  void _answerQuestion(int score) {
    _totalScore = score + _totalScore;
    switch (_questionIndex) {
      case 0:
        break;
      case 1:
        menwel = score;
        break;
      case 2:
        menwel = score;
        break;
      case 3:
        menwel = score;
        break;
      case 4:
        menwel = score;
        break;
      case 5:
        anx = score;
        break;
      case 6:
        anx = score;
        break;
      case 7:
        anx = score;
        break;
      case 8:
        anx = score;
        break;
      case 9:
        anx = score;
        break;
      case 10:
        socanx = score;
        break;
      case 11:
        socanx = score;
        break;
      case 12:
        socanx = score;
        break;
      case 13:
        socanx = score;
        break;
      case 14:
        socanx = score;
        break;
      case 15:
        socanx = score;
        break;
      case 16:
        socanx = score;
        break;
      case 17:
        socanx = score;
        break;
      case 18:
        socanx = score;
        break;
      case 19:
        socanx = score;
        break;
      case 20:
        dighel = score;
        break;
      case 21:
        dighel = score;
        break;
    }

    setState(() {
      _questionIndex = _questionIndex + 1;

      avgMenwel = avgMenwel + menwel;

      avganx += anx;

      avgsocanx += socanx;

      avgdighel += dighel;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print(avgMenwel / 21);
      print(avgsocanx / 12);
      print(avganx / 17);
      print(avgdighel / 2);
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("21 Questions: Mental Health Assessmment"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Color.fromARGB(255, 231, 238, 31),
                  Color.fromARGB(255, 188, 42, 255)
                ])),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz, onPressed),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }

  void onPressed() {}
}

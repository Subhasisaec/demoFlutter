import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
   @override
   State<StatefulWidget> createState(){
     return _MyAppState();
   }
}

class _MyAppState extends State<MyApp>{
  int _questionIndex=0;
  void _answerQuestion(){
    setState(() {
      _questionIndex+=1;    
    }); 
    print(_questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      {'questionText':'what is your favourite color?',
      'answers':['Black','Red','Green','White'],},
       {'questionText':'what is your favourite animal?',
      'answers':['Rabbit','Snake','Elephant','Lion'],},    
      
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Center(
          child: Column(
            children: [
              Question(questions[_questionIndex]['questionText']),  
              ... (questions[_questionIndex]['answers'] as List<String>).map((answer){
                return Answer(_answerQuestion, answer);
              }).toList()            
             /* Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),*/
            ],
          ),
        ),
      ),
    );
  }
}

//#hii
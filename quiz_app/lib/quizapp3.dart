import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  
  @override
  State createState() => _QuizAppState();
  }
  
class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Which programming language is used to develop Flutter apps?",
      "options": ["Java", "Kotlin", "Dart", "Swift"],
      "answerIndex": 2,
      },
      {
        "question": "What is the name of the framework used to build user interfaces (UI) in Flutter?",
        "options": ["Flutter UI", "Native UI Kit", "Material Design & Cupertino", "Android UI Framework"],
        "answerIndex": 2,
        },
        {
          "question": "What is the hot reload feature in Flutter known for?",
          "options": ["Compiling the code faster", "Previewing UI changes instantly without restarting the app", " Managing user data securely", " Debugging memory leaks"],
          "answerIndex": 1,
          },
          {
            "question": "What widget is the foundation for building most UIs in Flutter?",
            "options": ["Button", " Scaffold ", " Image", "Text"],
            "answerIndex": 1,
            },
            {
              "question": "What is the widget used to display text on the screen?",
              "options": ["Label", "Headline", "Paragraph", "Text"],
              "answerIndex": 1,
              },
              ];
              bool questionScreen = true;
              int questionIndex = 0;
              int selectedAnswerIndex = -1;
              int noOfCorrectAnswers = 0;
              MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
                if (selectedAnswerIndex != -1) {
                  if (buttonIndex == allQuestions[questionIndex]["answerIndex"]) {
                    return const MaterialStatePropertyAll(Colors.green);
                    } else if (buttonIndex == selectedAnswerIndex) {
                      return const MaterialStatePropertyAll(Colors.red);
                      } else {
  return const MaterialStatePropertyAll(null);
  }
  } else {
    return const MaterialStatePropertyAll(null);
    }
    }
    void validateCurrentPage() {
      if(selectedAnswerIndex == -1){
       return;
      }
      if (selectedAnswerIndex == allQuestions[questionIndex]["answerIndex"]) {
        noOfCorrectAnswers += 1;
      }
      if (selectedAnswerIndex != -1) {
          if (questionIndex == allQuestions.length - 1) {
            setState(() {
        questionScreen = false;
});
}
selectedAnswerIndex = -1;
setState(() {
questionIndex += 1;
});
}
}
Scaffold isQuestionScreen() {
if (questionScreen == true) {
return Scaffold(
appBar: AppBar(
  title: const Text("QuizApp",
  style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.orange,),
  ),
  backgroundColor: Colors.blue,
  centerTitle: true,
  ),
  body: Column(
    children: [
      const SizedBox(
height: 25,
),
Row(mainAxisAlignment: MainAxisAlignment.center,
children: [
  const Text(
  "Questions : ",
  style: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    ),
),

Text(
"${questionIndex + 1}/${allQuestions.length}",
style: const TextStyle(
fontSize: 25,
fontWeight: FontWeight.w600,
),
),
]),
const SizedBox(
height: 50,
),
SizedBox(
width: 380,
height: 50,
child: Text(allQuestions[questionIndex]["question"],
style: const TextStyle(
fontSize: 23,
fontWeight: FontWeight.w400,
),
),
),
const SizedBox(
height: 30,
),
ElevatedButton(
  style: ButtonStyle(
    backgroundColor: checkAnswer(0),
    ),
onPressed: () {
if (selectedAnswerIndex == -1) {
setState(() {
selectedAnswerIndex = 0;
});
}
},
child: Text(
"A.${allQuestions[questionIndex]["options"][0]}",
style: const TextStyle(
fontSize: 20,
fontWeight: FontWeight.normal,
),
),
),

const SizedBox(
height: 20,
),

ElevatedButton(
style: ButtonStyle(
backgroundColor: checkAnswer(1),
),
onPressed: () {
if (selectedAnswerIndex == -1) {
  setState(() {
selectedAnswerIndex = 1;
});
}
},
child: Text(
"B.${allQuestions[questionIndex]["options"][1]}",
style: const TextStyle(
fontSize: 20,
fontWeight: FontWeight.normal,
),
),
),
const SizedBox(
height: 20,
),
ElevatedButton(
style: ButtonStyle(
backgroundColor: checkAnswer(2),
),
onPressed: () {
if (selectedAnswerIndex == -1) {
setState(() {
selectedAnswerIndex = 2;
});
}
},
child: Text(
"C.${allQuestions[questionIndex]["options"][2]}",
style: const TextStyle(
fontSize: 20,
fontWeight: FontWeight.normal,
),
),
),
const SizedBox(
height: 20,
),

ElevatedButton(
style: ButtonStyle(
backgroundColor: checkAnswer(3),
),
onPressed: () {
if (selectedAnswerIndex == -1) {
setState(() {
selectedAnswerIndex = 3;
});
}
},
child: Text(
"D.${allQuestions[questionIndex]["options"][3]}",
style: const TextStyle(
fontSize: 20,
fontWeight: FontWeight.normal,
),
),
),
],
),
floatingActionButton: FloatingActionButton(
onPressed: () {
validateCurrentPage();
},
backgroundColor: Colors.blue,
child: const Icon(
Icons.forward,
color: Colors.orange,
),
),
);

} else if(noOfCorrectAnswers<3) {
return Scaffold(
appBar: AppBar(
  centerTitle: true,
  backgroundColor: Colors.blue,
title: const Text(
"QuizApp",
style: TextStyle(
fontSize: 30,
fontWeight: FontWeight.w800,
color: Colors.orange,
),
),
),
body: Center(
  child: 
  Column(
  children: [
const SizedBox(
height: 30,
),
Image.network(

"https://www.livemint.com/lm-img/img/2023/12/26/1600x900/12th_Fail_1703564975068_1703564986372.png",
height: 300,
width: 380,
),
const Text(
"Sorry You are failed!",
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.w500,
),
),
const SizedBox(
height: 20,
),
const Text(
"You have completed the Quiz",
style: TextStyle(
fontSize: 23,
fontWeight: FontWeight.w500,
),
),
const SizedBox(height: 15),
Text("$noOfCorrectAnswers/${allQuestions.length}"),
ElevatedButton(
onPressed: () {

questionIndex = 0;
questionScreen = true;
noOfCorrectAnswers = 0;
selectedAnswerIndex = -1;
setState(() {});
},
child: const Text(
"Reset",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.normal,
color: Colors.orange,
),
))
],
),
),
);
} else{
  return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.blue,
title: const Text(
"QuizApp",
style: TextStyle(
fontSize: 30,
fontWeight: FontWeight.w800,
color: Colors.orange
),
),
centerTitle: true,
),
body: Center( 
  child: 
  Column(
children: [
const SizedBox(
height: 30,
),
Image.network(

"https://img.freepik.com/premium-vector/winner-trophy-cup-with-ribbon-confetti_51486-122.jpg",
height: 300,
width: 380,
),
const Text(
"Congratulations!!!",
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.w500,
),
),
const SizedBox(
height: 20,
),
const Text(
"You have completed the Quiz",
style: TextStyle(
fontSize: 23,
fontWeight: FontWeight.w500,
),
),
const SizedBox(height: 15),
Text("$noOfCorrectAnswers/${allQuestions.length}"),
ElevatedButton(
onPressed: () {

questionIndex = 0;
questionScreen = true;
noOfCorrectAnswers = 0;
selectedAnswerIndex = -1;
setState(() {});
},
child: const Text(
"Reset",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.normal,
color: Colors.orange,
),
))
],
),
),
);
}
}
@override
Widget build(BuildContext context) {
return isQuestionScreen();
}
}
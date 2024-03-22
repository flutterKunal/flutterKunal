import 'package:flutter/material.dart';
import 'ModelClass.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List allQuestions = [
    const SingleQuestion(
      question: "1.Which of the following programming language used for building Flutter apps?",
      options: ["Java", "Kottlin", "Dart", "Swift"],
      answerIndex: 2,
    ),
    const SingleQuestion(
      question: "2.What widget is the foundation for building most UIs in Flutter?",
      options: ["Button", "Scaffold", "Text", "Image"],
      answerIndex: 1,
    ),
    const SingleQuestion(
      question: "3.Which widget is used to define the overall layout structure of a Flutter app?",
      options: ["Scaffold", "Text", "Container", "Column"],
      answerIndex: 0,
    ),
    const SingleQuestion(
      question: "4.What are the two main categories of widgets in Flutter?",
      options: ["Static and Dynamic", "Native and Custom", "Layout and UI", "Stateful and Stateless"],
      answerIndex: 3,
    ),
    const SingleQuestion(
      question: "5.How do you manage state changes in a Stateful widget?",
      options: ["Widget Operations", "setState method", "Global variables", "None"],
      answerIndex: 1,
    ),
 
  ];
  bool resultScreen = false;
  bool questionScreen = false;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int noOfCorrectAnswers = 0;

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(
            Color.fromARGB(255, 198, 89, 203));
      }
    } else {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 198, 89, 203));
    }
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }
    if (selectedAnswerIndex == allQuestions[questionIndex].answerIndex) {
      noOfCorrectAnswers += 1;
    }
    if (selectedAnswerIndex != -1) {
      if (questionIndex == allQuestions.length - 1) {
        questionScreen = false;
        setState(() {
          resultScreen = true;
        });
      }
      selectedAnswerIndex = -1;
      setState(() {
        questionIndex += 1;
      });
    }
  }

  void validateBackPage() {

    if (questionIndex > 0) {
      if (selectedAnswerIndex == allQuestions[questionIndex].answerIndex) {
        noOfCorrectAnswers += 1;
      }
      selectedAnswerIndex = -1;
      setState(() {
        questionIndex -= 1;
      });
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey
        ),
        
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 200, 186, 186),
                  Colors.blue
                ]),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Questions : ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "${questionIndex + 1}/${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.brown, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                height: 120,
                width: 378,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    allQuestions[questionIndex].question,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 55,
                width: 360,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(0),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      setState(() {
                        selectedAnswerIndex = 0;
                      });
                    }
                  },
                  child: Text(
                    "A.${allQuestions[questionIndex].options[0]}",
                    style: const TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 55,
                width: 360,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(1),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      setState(() {
                        selectedAnswerIndex = 1;
                      });
                    }
                  },
                  child: Text(
                    "B.${allQuestions[questionIndex].options[1]}",
                    style: const TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 255, 253, 253),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 55,
                width: 360,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(2),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      setState(() {
                        selectedAnswerIndex = 2;
                      });
                    }
                  },
                  child: Text(
                    "C.${allQuestions[questionIndex].options[2]}",
                    style: const TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 55,
                width: 360,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(3),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      setState(() {
                        selectedAnswerIndex = 3;
                      });
                    }
                  },
                  child: Text(
                    "D. ${allQuestions[questionIndex].options[3]}",
                    style: const TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    validateCurrentPage();
                  },
                  backgroundColor: const Color.fromARGB(255, 190, 76, 196),
                  tooltip: "Next Question",
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
      );
      //1
    } else if ( resultScreen == true) {
      if(noOfCorrectAnswers>=3){
      return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(153, 222, 86, 229),
                Colors.white,
                Color.fromARGB(153, 68, 0, 73),
              ]
            )
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 0,
              ),
              Image.asset(
                "images/win.png",
                height: 400,
                width:400,
              ),
              const Text(
                "Congratulations!!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "You have Successfully completed the Quiz...",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Your Score",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "$noOfCorrectAnswers/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  questionIndex = 0;
                  questionScreen = true;
                  noOfCorrectAnswers = 0;
                  selectedAnswerIndex = -1;
                  setState(() {});
                },
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(130, 50)),
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 198, 89, 203)
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text(
                  "Restart",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
      } else{
              return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(153, 223, 129, 230),
                Color.fromARGB(153, 217, 125, 224),
              ]
            )
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset(
                "images/fail.png",
                height: 300,
                width: 250,
              ),
              const Text(
                "You are failed!!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Your Score",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "$noOfCorrectAnswers/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  questionIndex = 0;
                  questionScreen = true;
                  noOfCorrectAnswers = 0;
                  selectedAnswerIndex = -1;
                  setState(() {});
                },
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(130, 50)),
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 198, 89, 203)
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text(
                  "Restart",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
              
      }
    } else if (resultScreen == false && questionScreen == false) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              SizedBox(
                height: 400,
                width: 300,
                child: Image.network("https://lh3.googleusercontent.com/proxy/eNtWdcRXlDC-aqIqjfze0yiUTwpGn6-YuYh_QmS_jwkhnMFIwb-6fiA_FStO5Q7bemsifO8cyrSCFkiUfDmJGFnOLXQKXPCuwpLko8Fi5clJnHRjMo_bVg"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: const Color.fromARGB(255, 45, 73, 97))
                    ),
                    child: 
                    GestureDetector(
                      onTap: () => setState(() {
                        questionScreen=true;
                      }),
                      child: 
                      const Text(
                      "Start Quiz",
                       style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                       ),       
                    ),
                    ),
                  )
                ],
              )
            ]
          ),
        ),
      );
    } else {
      return const Scaffold();  
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
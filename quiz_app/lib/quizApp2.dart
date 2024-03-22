import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/services.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizApp();
}

class SingleModelClass {
  final String? question;
  final List<String>? options;
  final int? correctOpt;

  const SingleModelClass({this.question, this.options, this.correctOpt});
}

class _QuizApp extends State {
  int queIndex = 0;
  int selectedOpt = -1;
  int score = 0;
  List allQuesList = [
    const SingleModelClass(
        question: "Who is founder of Microsoft Company?",
        options: ["Steve jobs", " Bills gates", " Elon musk", "Jeff Bezos"],
        correctOpt: 1),
    const SingleModelClass(
        question: "Who is founder of Apple Company ?",
        options: ["Steve jobs", " Bills gates", " Elon musk", "Jeff Bezos"],
        correctOpt: 0),
    const SingleModelClass(
        question: "Who is founder of Amazon Company ?",
        options: ["Steve jobs", " Bills gates", " Elon musk", "Jeff Bezos"],
        correctOpt: 3),
    const SingleModelClass(
        question: "Who is founder of Tesla Company ?",
        options: ["Steve jobs", " Bills gates", " Elon musk", "Jeff Bezos"],
        correctOpt: 2),
    const SingleModelClass(
        question: "Who is parent company of Google Company?",
        options: ["Facebook", " Aplabet", "VmWare"],
        correctOpt: 1)
  ];
  Color? colorPicker(int index) {
    if (selectedOpt != -1) {
      if (index == allQuesList[queIndex].correctOpt) {
        return Colors.green;
      } else if (index == selectedOpt) {
        return Colors.red;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  Scaffold scaffoldChecker() {
    if (queIndex < allQuesList.length) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30,color: Colors.orange),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 189, 117, 202),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text("Question: ${queIndex + 1} / ${allQuesList.length}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 25)),
              const SizedBox(
                height: 10,
              ),
              Text("Q ${queIndex + 1}. ${allQuesList[queIndex].question}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20)),
              const SizedBox(
                height: 15,
              ),
              (allQuesList[queIndex].options.length >= 1)
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colorPicker(0),
                          minimumSize: const Size(60, 60),
                          shadowColor: const Color.fromARGB(255, 127, 0, 254),
                          surfaceTintColor:
                              const Color.fromARGB(255, 217, 5, 236)),
                      onPressed: (selectedOpt == -1)
                          ? () {
                              setState(() {
                                selectedOpt = 0;
                              });
                            }
                          : () {},
                      child: Text("A. ${allQuesList[queIndex].options[0]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black)))
                  : const SizedBox(),
              const SizedBox(
                height: 10,
              ),
              (allQuesList[queIndex].options.length >= 2)
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colorPicker(1),
                          minimumSize: const Size(60, 60),
                          shadowColor: const Color.fromARGB(255, 127, 0, 254),
                          surfaceTintColor:
                              const Color.fromARGB(255, 217, 5, 236)),
                      onPressed: (selectedOpt == -1)
                          ? () {
                              setState(() {
                                selectedOpt = 1;
                              });
                            }
                          : () {},
                      child: Text("B.  ${allQuesList[queIndex].options[1]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black)),
                    )
                  : const SizedBox(),
              const SizedBox(
                height: 10,
              ),
              (allQuesList[queIndex].options.length >= 3)
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colorPicker(2),
                          minimumSize: const Size(60, 60),
                          shadowColor: const Color.fromARGB(255, 127, 0, 254),
                          surfaceTintColor:
                              const Color.fromARGB(255, 217, 5, 236)),
                      onPressed: (selectedOpt == -1)
                          ? () {
                              setState(() {
                                selectedOpt = 2;
                              });
                            }
                          : () {},
                      child: Text("C. ${allQuesList[queIndex].options[2]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black)))
                  : const SizedBox(),
              const SizedBox(
                height: 10,
              ),
              (allQuesList[queIndex].options.length >= 4)
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colorPicker(3),
                          minimumSize: const Size(60, 60),
                          shadowColor: const Color.fromARGB(255, 127, 0, 254),
                          surfaceTintColor:
                              const Color.fromARGB(255, 217, 5, 236)),
                      onPressed: (selectedOpt == -1)
                          ? () {
                              setState(() {
                                selectedOpt = 3;
                              });
                            }
                          : () {},
                      child: Text("D. ${allQuesList[queIndex].options[3]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black)))
                  : const SizedBox(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (selectedOpt!=-1)?() {
            if (selectedOpt == allQuesList[queIndex].correctOpt) {
              score++;
            }
            setState(() {
              selectedOpt = -1;
              queIndex++;
            });
          }:null,
          child: const Icon(
            Icons.arrow_right_outlined,
            size: 30,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 189, 117, 202),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SizedBox(
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (score >= (allQuesList.length * 40) ~/ 100)
                
                    ?const Text(
                        "Congratulations",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      )
                    : const Text(
                        "You are failed",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                const SizedBox(
                  height: 15,
                ),
                Image.network("https://www.shutterstock.com/shutterstock/photos/1570181977/display_1500/stock-vector-trophy-cup-champion-trophy-shiny-golden-cup-and-falling-confetti-sport-award-winner-prize-1570181977.jpg",
                height: 300,
                width: 500,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your Score :$score ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: (score == allQuesList.length)
                              ? (Colors.green)
                              : (score >= (allQuesList.length * 40) ~/ 100)
                                  ? Colors.yellow
                                  : Colors.red,
                        )),
                    Text(
                      " / ${allQuesList.length}  ",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 28, 5, 5)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (allQuesList.length > score)
                        ? ElevatedButton(
                            onPressed: () {
                              selectedOpt = -1;
                              queIndex = 0;
                              score = 0;

                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(40, 50),
                              shadowColor:
                                  const Color.fromARGB(255, 127, 0, 254),
                              surfaceTintColor:
                                  const Color.fromARGB(255, 217, 5, 236),
                            ),
                            child: const Text(
                              "Reset",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ))
                        : const SizedBox(),
                    const SizedBox(
                      width: 10,
                    ),
                    (score >= ((allQuesList.length * 40) / ~100))
                        ? ElevatedButton(
                            onPressed: () {
                              if (Platform.isAndroid) {
                                SystemNavigator.pop();
                              } else {
                                exit(0);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(40, 50),
                              shadowColor:
                                  const Color.fromARGB(255, 127, 0, 254),
                              surfaceTintColor:
                                  const Color.fromARGB(255, 217, 5, 236),
                            ),
                            child: const Text(
                              "Close",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ))
                        : const SizedBox(),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return scaffoldChecker();
  }
}
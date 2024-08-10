import 'dart:async';
import 'package:flutter/material.dart';
import 'package:permis_marocain/Config/constantes.dart';
import 'package:permis_marocain/views/series/ResultScreen.dart';
import 'package:permis_marocain/views/module/quation.dart';

class AfficherSerie extends StatefulWidget {
  final int number;
  final List<Question> questions;

  const AfficherSerie({
    super.key,
    required this.number,
    required this.questions,
  });

  @override
  State<AfficherSerie> createState() => _AfficherSerieState();
}

class _AfficherSerieState extends State<AfficherSerie> {
  int currentQuestionIndex = 0;
  late List<List<int>> userAnswers;
  int _remainingTime = 30;
  late Timer _timer;
  List<bool> isButtonClicked = [false, false, false, false];

  @override
  void initState() {
    super.initState();
    userAnswers = List.generate(widget.questions.length, (index) => []);
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          nextQuestion();
        }
      });
    });
  }

  void handleButtonClick(int index) {
    setState(() {
      // Set all buttons to not clicked
      for (int i = 0; i < isButtonClicked.length; i++) {
        isButtonClicked[i] = false;
      }
      // Set the clicked button to clicked
      isButtonClicked[index] = true;
    });
  }

  void clearSelectedAnswers() {
    setState(() {
      userAnswers[currentQuestionIndex] = [];
    });
  }

  void nextQuestion() {
    _timer.cancel();
    setState(() {
      if (currentQuestionIndex < widget.questions.length - 1) {
        currentQuestionIndex++;
        _remainingTime = 30;
        startTimer();
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              userAnswers: userAnswers,
              questions: widget.questions,
              number: widget.number,
            ),
          ),
        );
      }
    });
  }

  void toggleAnswer(int answerIndex) {
    setState(() {
      if (userAnswers[currentQuestionIndex].contains(answerIndex)) {
        userAnswers[currentQuestionIndex].remove(answerIndex); // Remove if already selected
      } else {
        userAnswers[currentQuestionIndex].add(answerIndex); // Add if not selected
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onDoubleTap: () {
                // Zoom the image when double tapped
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: InteractiveViewer(
                      child: Image.asset(
                        widget.questions[currentQuestionIndex].imagePath,
                        fit: BoxFit.contain,
                        width: AppConstantes.screenWidth,
                      ),
                    ),
                  ),
                );
              },
              child: Image.asset(
                widget.questions[currentQuestionIndex].imagePath,
                width: AppConstantes.screenWidth,
              ),
            ),
            SizedBox(height: AppConstantes.screenHeight * .05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    clearSelectedAnswers();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    height: AppConstantes.screenHeight * .25,
                    width: AppConstantes.screenWidth * .25,
                    child: Center(
                      child: Text(
                        "تصحيح",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    _buildOptionContainer(
                      widget.questions[currentQuestionIndex].options[0],
                      0,
                    ),
                    SizedBox(height: 10),
                    _buildOptionContainer(
                      widget.questions[currentQuestionIndex].options[1],
                      1,
                    ),
                  ],
                ),
                Column(
                  children: [
                    _buildOptionContainer(
                      widget.questions[currentQuestionIndex].options[2],
                      2,
                    ),
                    SizedBox(height: 10),
                    _buildOptionContainer(
                      widget.questions[currentQuestionIndex].options[3],
                      3,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: nextQuestion,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    height: AppConstantes.screenHeight * .25,
                    width: AppConstantes.screenWidth * .25,
                    child: Center(
                      child: Text(
                        "التالي",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    height: AppConstantes.screenHeight * .12,
                    width: AppConstantes.screenWidth * .30,
                    child: Center(
                      child: Icon(
                        Icons.volume_down,
                        size: 35,
                        color: const Color.fromARGB(171, 0, 0, 0),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    height: AppConstantes.screenHeight * .12,
                    width: AppConstantes.screenWidth * .30,
                    child: Center(
                      child: Text(
                        "${currentQuestionIndex + 1}",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _remainingTime <= 10 ? Colors.red : Colors.grey, // Change border color to red in last 10 seconds
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    height: AppConstantes.screenHeight * .12,
                    width: AppConstantes.screenWidth * .30,
                    child: Center(
                      child: Text(
                        "${_remainingTime.toString().padLeft(2, '0')}", // Display the timer
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: _remainingTime <= 10 ? Colors.red : Colors.black, // Change text color to red in last 10 seconds
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionContainer(String optionText, int index) {
    return GestureDetector(
      onTap: () => toggleAnswer(index + 1),
      child: Container(
        decoration: BoxDecoration(
          color: userAnswers[currentQuestionIndex].contains(index + 1)
              ? Colors.orange
              : const Color.fromARGB(255, 88, 167, 233),
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: AppConstantes.screenHeight * .12,
        width: AppConstantes.screenWidth * .2,
        child: Center(
          child: Text(
            optionText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

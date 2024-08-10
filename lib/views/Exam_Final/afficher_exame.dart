import 'package:flutter/material.dart';
import 'package:permis_marocain/Config/constantes.dart';
import 'package:permis_marocain/DB/exame_db.dart';
import 'package:permis_marocain/views/Exam_Final/exame_esultat.dart';

class AfficherExame extends StatefulWidget {
  final int number;
  // final List<Question> questions;

  const AfficherExame({
    super.key,
    required this.number,
    // required this.questions,
  });

  @override
  State<AfficherExame> createState() => _AfficherExameState();
}

class _AfficherExameState extends State<AfficherExame> {
  int currentQuestionIndex = 0;
  late List<List<int>> userAnswers;

  @override
  void initState() {
    super.initState();
    userAnswers = List.generate(ExameDb.exame.length, (index) => []);
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < ExameDb.exame.length - 1) {
        currentQuestionIndex++;
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ExameResultat(
              userAnswers: userAnswers,
              questions: ExameDb.exame,
              // number: widget.number,
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
      body: Column(
        children: [
          Image.asset(
            ExameDb.exame[currentQuestionIndex].imagePath,
            width: AppConstantes.screenWidth,
          ),
          SizedBox(height: AppConstantes.screenHeight * .05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
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
              Column(
                children: [
                  _buildOptionContainer(
                    ExameDb.exame[currentQuestionIndex].options[0],
                    0,
                  ),
                  SizedBox(height: 10),
                  _buildOptionContainer(
                    ExameDb.exame[currentQuestionIndex].options[1],
                    1,
                  ),
                ],
              ),
              Column(
                children: [
                  _buildOptionContainer(
                    ExameDb.exame[currentQuestionIndex].options[2],
                    2,
                  ),
                  SizedBox(height: 10),
                  _buildOptionContainer(
                    ExameDb.exame[currentQuestionIndex].options[3],
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
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  height: AppConstantes.screenHeight * .12,
                  width: AppConstantes.screenWidth * .30,
                  child: Center(
                    child: Icon(Icons.pause),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionContainer(String optionText, int index) {
    return GestureDetector(
      onTap: () => toggleAnswer(index + 1),
      child: Container(
        decoration: BoxDecoration(
          color: userAnswers[currentQuestionIndex].contains(index + 1)
              ? Colors.blue
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

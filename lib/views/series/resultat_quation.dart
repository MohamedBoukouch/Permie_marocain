import 'package:flutter/material.dart';
import 'package:permis_marocain/Config/constantes.dart';
import 'package:permis_marocain/widgets/resultat_quation_container.dart';

class ResultatQuation extends StatelessWidget {
  final String image;
  final String description;
  final List<int> userAnswer;
  final List<int> correctAnswer;
  final bool isCorrect;
  final int number_q;

  ResultatQuation({
    super.key,
    required this.image,
    required this.userAnswer,
    required this.correctAnswer,
    required this.description,
    required this.isCorrect,
    required this.number_q,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 24, 24),
      appBar: AppBar(
        backgroundColor: isCorrect==true?Colors.green:Colors.red,
        title: Text("السؤال $number_q"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.check, size: 40, color: Colors.green),
                  // First Row: Correct Answers
                  for (int i = 0; i < 4; i++)
                    ResultatQuationContainer(
                      titel: (i + 1).toString(),
                      color: correctAnswer.contains(i + 1)
                          ? Colors.green
                          : Colors.grey,
                    ),
                ],
              ),
            ),
            // Second Row: User Answers
            Container(
              padding: const EdgeInsets.only(right: 20, left: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.person, size: 40, color: Colors.orange),
                  for (int i = 0; i < 4; i++)
                    ResultatQuationContainer(
                      titel: (i + 1).toString(),
                      color: userAnswer.isEmpty
                          ? Colors.grey
                          : userAnswer.contains(i + 1)
                              ? (correctAnswer.contains(i + 1) ? Colors.green : Colors.red)
                              : Colors.grey,
                    ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: AppConstantes.screenHeight * .2,
              padding: const EdgeInsets.all(8),
              width: AppConstantes.screenWidth,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 41, 38, 38),
                borderRadius: BorderRadius.circular(25),
              ),
              child:  Center(
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

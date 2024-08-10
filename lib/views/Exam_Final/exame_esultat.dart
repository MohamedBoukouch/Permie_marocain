import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permis_marocain/Config/constantes.dart';
import 'package:permis_marocain/DB/sql_bd.dart';
import 'package:permis_marocain/views/home.dart';
import 'package:permis_marocain/views/module/quation.dart';
import 'package:permis_marocain/views/series/resultat_quation.dart';
import 'package:permis_marocain/views/series/series_1.dart';
import 'package:permis_marocain/widgets/CustomAlert.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ExameResultat extends StatefulWidget {
  final List<List<int>> userAnswers;
  final List<Question> questions;
  // final int number;

  ExameResultat({
    required this.userAnswers,
    required this.questions,
    // required this.number,
  });

  @override
  State<ExameResultat> createState() => _ExameResultatState();
}

class _ExameResultatState extends State<ExameResultat> {
  Sqldb sqlDb = Sqldb();

  @override
  void initState() {
    super.initState();
    // _saveExamResults();
  }

  // Future<void> _saveExamResults() async {
  //   int correctCount = _calculateCorrectAnswers();
  //   int numberOfStars = _calculateStars(correctCount, widget.questions.length);

  //   // Check if a row with the given id already exists
  //   List<Map<String, dynamic>> existingRows = await sqlDb.readData(
  //     "SELECT * FROM series WHERE id = ${widget.number}"
  //   );

  //   // If it exists, delete it
  //   if (existingRows.isNotEmpty) {
  //     await sqlDb.deleteData(
  //       "DELETE FROM series WHERE id = ${widget.number}"
  //     );
  //   }

  //   // Insert the new result
  //   int response = await sqlDb.insertData(
  //     '''INSERT INTO series (id, titel, resultat, nbstart) 
  //     VALUES (${widget.number}, 'Series Title', '$correctCount/${widget.questions.length}', '$numberOfStars')'''
  //   );

  //   if (response > 0) {
  //     print("Exam results saved successfully.");
  //   } else {
  //     print("Failed to save exam results.");
  //   }
  // }

  int _calculateCorrectAnswers() {
    int correctCount = 0;
    for (int i = 0; i < widget.questions.length; i++) {
      if (_isAnswerCorrect(widget.userAnswers[i], widget.questions[i].correctAnswerIndex)) {
        correctCount++;
      }
    }
    return correctCount;
  }

  @override
  Widget build(BuildContext context) {
    int correctCount = _calculateCorrectAnswers();
    int numberOfStars = _calculateStars(correctCount, widget.questions.length);

    return WillPopScope(
      onWillPop: () async {
        return await _showExitConfirmationDialog();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("النتيجة $correctCount/${widget.questions.length}"),
        ),
        body: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Icon(
                    index < numberOfStars ? Icons.star : Icons.star_border,
                    color: index < numberOfStars ? Colors.yellow : Colors.grey,
                    size: 30,
                  );
                }),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: widget.questions.length,
                itemBuilder: (context, index) {
                  bool isCorrect = _isAnswerCorrect(
                    widget.userAnswers[index],
                    widget.questions[index].correctAnswerIndex,
                  );

                  return InkWell(
                    onTap: () {
                      Get.to(
                        ResultatQuation(
                          image: widget.questions[index].imagePath,
                          correctAnswer: widget.questions[index].correctAnswerIndex,
                          userAnswer: widget.userAnswers[index],
                          description: widget.questions[index].description,
                          isCorrect: isCorrect,
                          number_q: index + 1,
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isCorrect ? Colors.green : Colors.red,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      height: AppConstantes.screenHeight * .12,
                      width: AppConstantes.screenWidth * .2,
                      child: Center(
                        child: Text(
                          "${index + 1}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _isAnswerCorrect(List<int> userAnswer, List<int> correctAnswer) {
    return userAnswer.toSet().difference(correctAnswer.toSet()).isEmpty &&
        correctAnswer.toSet().difference(userAnswer.toSet()).isEmpty;
  }

  int _calculateStars(int correctCount, int totalQuestions) {
    int questionsPerStar = totalQuestions ~/ 5;

    if (correctCount == totalQuestions) {
      return 5;
    } else if (correctCount >= 4 * questionsPerStar) {
      return 4;
    } else if (correctCount >= 2 * questionsPerStar) {
      return 3;
    } else if (correctCount >= questionsPerStar) {
      return 2;
    } else if (correctCount > 0) {
      return 1;
    } else {
      return 0;
    }
  }

  Future<bool> _showExitConfirmationDialog() async {
    return (await CustomAlert.show(
  context: context,
  type: AlertType.info,
  desc: 'هل تريد حقا مغادرة التصحيح',
  onYesPressed: () {
    Get.offAll(const HomeView());
  },
  onNoPressed: () {
    Navigator.of(context).pop(); // Close the alert dialog
  },
)
    ) ?? false;
  }
}

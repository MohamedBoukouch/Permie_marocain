import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:permis_marocain/Config/constantes.dart';
import 'package:permis_marocain/views/Exam_Final/afficher_exame.dart';
import 'package:permis_marocain/views/home.dart';

class ExamFinale extends StatefulWidget {
  const ExamFinale({super.key});

  @override
  _ExamFinaleState createState() => _ExamFinaleState();
}

class _ExamFinaleState extends State<ExamFinale> {
  late String generatedCode; // Variable to store the generated code

  @override
  void initState() {
    super.initState();
    generatedCode = _generateCode(); // Generate the code when the page loads
  }

  // Function to generate a 4-digit code
  String _generateCode() {
    return (1000 + (9999 - 1000) * (new DateTime.now().millisecondsSinceEpoch % 10000) ~/ 10000).toString();
  }

  // Function to handle the OTP submission
  void _onSubmit(String inputCode) {
    if (inputCode == generatedCode) {
      // If the code matches, navigate to the home page
      Get.to(AfficherExame(number: 1,));
    } else {
      // If the code is incorrect, show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: const Color.fromARGB(255, 250, 60, 46),
        content: Text('الرقم السري خاطئ',style: TextStyle(fontFamily: 'cairo'),),),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("الاختبار النهائي", style: TextStyle(fontFamily: "cairo")),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 20, left: 20, top: 20),
          child: Column(
            children: [
              Image.asset("assets/icons/cv_pictr.png", width: AppConstantes.screenWidth * .4),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
                  crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
                  children: [
                    SizedBox(height: AppConstantes.screenHeight * .07),
                    Text(
                      "أدخل الرقم السري",
                      style: TextStyle(fontFamily: "cairo", fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: AppConstantes.screenHeight * .02),
                    Text(
                      generatedCode, // Display the generated code
                      style: TextStyle(fontFamily: "cairo", fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: AppConstantes.screenHeight * .05),
                    OtpTextField(
                      numberOfFields: 4,
                      showCursor: false,
                      fieldWidth: 50,
                      borderRadius: BorderRadius.circular(10),
                      textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      disabledBorderColor: Colors.red,
                      showFieldAsBox: true,
                      onSubmit: _onSubmit, // Handle OTP submission
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppConstantes.screenHeight * .1),
              // Spacer(),
              Row(
                children: [
                  Container(
                    height: AppConstantes.screenHeight * .055,
                    width: AppConstantes.screenWidth * .5,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 26, 117, 192),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "JH111111",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "cairo",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: AppConstantes.screenHeight * .055,
                    width: AppConstantes.screenWidth * .35,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 90, 175, 245),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "نوع الرخصة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "cairo",
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: AppConstantes.screenHeight * .055,
                    width: AppConstantes.screenWidth * .5,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 26, 117, 192),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "CATEGORIE B",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "cairo",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: AppConstantes.screenHeight * .055,
                    width: AppConstantes.screenWidth * .35,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 90, 175, 245),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "رقم البطاقة الوطنية",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "cairo",
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: AppConstantes.screenHeight * .055,
                    width: AppConstantes.screenWidth * .5,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 26, 117, 192),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "BOUKOUCH MOHAMED",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "cairo",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: AppConstantes.screenHeight * .055,
                    width: AppConstantes.screenWidth * .35,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 90, 175, 245),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "الاسم",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "cairo",
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

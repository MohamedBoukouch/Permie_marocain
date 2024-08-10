import 'package:flutter/material.dart';
import 'package:permis_marocain/Config/constantes.dart';

class ResultatQuationContainer extends StatelessWidget {
  final String titel;
  final Color color;
  const ResultatQuationContainer({super.key, required this.titel, required this.color,});

  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    height: AppConstantes.screenHeight * .08,
                    width: AppConstantes.screenWidth * .17,
                    child: Center(
                      child: Text(
                        titel,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Ensure text is visible on green
                        ),
                      ),
                    ),
                  );
  }
}
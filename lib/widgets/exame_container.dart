import 'package:flutter/material.dart';

class ExameContainer extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String titel;
  final int number;
  final String resultat;
  final int nmb_start;

  const ExameContainer({
    super.key,
    required this.screenHeight,
    required this.titel,
    required this.screenWidth,
    required this.number,
    required this.resultat,
    required this.nmb_start,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.15, // Adjust as needed
      width: screenWidth * 0.45, // Adjust as needed
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(titel),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.drive_eta, color: Colors.blue),
              Text("$resultat", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)),
              Text("$number", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold)),
              Icon(Icons.menu),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(5, (index) {
              // Determine the color of each star based on nmb_start
              Color starColor = index < nmb_start ? Colors.yellowAccent : Colors.grey;
              return Icon(Icons.star, color: starColor, size: 25);
            }),
          ),
        ],
      ),
    );
  }
}

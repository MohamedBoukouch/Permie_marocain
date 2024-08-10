import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String file;
  final String titel;

  const ImageContainer({
    Key? key,
    required this.screenHeight,
    required this.file,
    required this.titel,
    required this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.4, // Adjust as needed
      width: screenWidth * 0.47, 
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(bottom: 20),// Adjust as needed
      decoration: BoxDecoration(
        color: Color.fromARGB(172, 59, 56, 56),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: ListTile(
          title:ClipRRect(
            borderRadius: BorderRadius.circular(20), // Set the border radius here
            child: Image.asset(
              file,
              fit: BoxFit.cover, // Adjust image fit if needed
            ),
          ),
          subtitle: Text(
          titel,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontFamily: "cairo"
          ),
          ),
        ),
      )
    );
  }
}

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
      height: screenHeight * 0.26, // Adjust as needed
      width: screenWidth * 0.45, 
      margin: EdgeInsets.only(bottom: 10),// Adjust as needed
      decoration: BoxDecoration(
        color: Colors.white,
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
          title:Image.asset(file),
          subtitle: Text(titel),
        ),
      )
    );
  }
}

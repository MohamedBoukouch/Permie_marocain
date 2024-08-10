import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String titel;

  const HomeContainer({
    Key? key,
    required this.screenHeight,
    required this.titel,
    required this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.26, // Adjust as needed
      width: screenWidth * 0.45, // Adjust as needed
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
      child: ListTile(
        // title: Image.asset("assets/icons/6.png",),
        subtitle: Center(
        child: Text(
          titel,
          style: const TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'cairo',fontWeight: FontWeight.bold),
        ),
      ),
      )
    );
  }
}
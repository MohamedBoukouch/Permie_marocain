import 'package:flutter/material.dart';
import 'dart:async';

import 'package:permis_marocain/views/home.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();

    // Delay of 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to another screen or perform any other action after 5 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeView()), // Replace 'NextScreen()' with your target screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // Loading indicator
      ),
    );
  }
}

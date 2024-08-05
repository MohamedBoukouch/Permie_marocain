import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Config/constantes.dart';
import '../../../widgets/imagecontainer.dart';

class RoutCour1 extends StatelessWidget {
  const RoutCour1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Image.asset("assets/cour_1/partie_1/1.png"),
      appBar: AppBar(backgroundColor: Colors.white,),
      body: Container(
        margin: EdgeInsets.only(top: 10,bottom: 20),
        child: Column(
          children: [
            //ROW_1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
              children: [
                ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/1.png",titel: "hello",),
                ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/1.png",titel: "hello",),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
              children: [
                ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/1.png",titel: "hello",),
                ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/1.png",titel: "hello",),
              ],
            ),       
          ],
        ),
      ),
    );
  }
}
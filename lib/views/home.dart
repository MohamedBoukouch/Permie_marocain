import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permis_marocain/views/cours.dart';
import 'package:permis_marocain/widgets/home_container.dart';

import '../Config/constantes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen dimensions
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Code Siyaqa'),
      ),
      body: Column(
        children: [
          //ROW_1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
            children: [
              HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "hello",),
              HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "hello",),
            ],
          ),
          SizedBox(height: 15,),
          //ROW_2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
            children: [
              InkWell(
                onTap: () {
                  Get.to(Cours());
                },
                child: HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "الدروس النظرية",)),
              HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "hello",),
            ],
          ),   
          SizedBox(height: 15,),
          //ROW_2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
            children: [
              HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "hello",),
              HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "hello",),
            ],
          ),        
        ],
      ),
    );
  }
}

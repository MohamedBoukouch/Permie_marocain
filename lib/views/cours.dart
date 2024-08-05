import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permis_marocain/widgets/home_container.dart';

import '../Config/constantes.dart';
import 'Cours/Route/route_home.dart';

class Cours extends StatelessWidget {
  const Cours({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الدروس النظرية'),
      ),
      body: Column(
        children: [
          //ROW_1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
            children: [
              HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "السائق"),
              InkWell(
                onTap: () {
                  Get.to(const RoutHome());
                },
                child: HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "الطريق",)),
            ],
          ),
          SizedBox(height: 15,),
          //ROW_2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
            children: [
              InkWell(
                onTap: () {
                  // Get.to(Cours());
                },
                child: HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "قواعد السير",)),
              HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "المركبة",),
            ],
          ),   
          SizedBox(height: 15,),
          //ROW_2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
            children: [
              HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "المخالفات والعقوبات",),
              HomeContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,titel: "المبادئ الأولية في السلامة الطرقية",),
            ],
          ),        
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:permis_marocain/Config/constantes.dart';
import 'package:permis_marocain/widgets/imagecontainer.dart';

class RouteCour22 extends StatelessWidget {
  const RouteCour22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("علامات الأسبقية",style: TextStyle(fontFamily: 'cairo'),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_3/1.png",titel: "قف"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_3/2.png",titel: "قف",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_3/3.png",titel: "إعطاء حق الأسبقية عند ملتقى الطرق- علامة وضعية"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_3/4.png",titel: "إعطاء حق الأسبقية عند ملتقى الطرق - إشارة متقدمة على مسافة 150 متر",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_3/5.png",titel: "إعطاء حق الأسبقية عند ملتقى الطرق - إشارة متقدمة لعلامة قف"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_3/6.png",titel: "ملتقى طرق تطبق فيه قاعدة حق الأسبقية للقادم من اليمين"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_3/7.png",titel: "ملتقى طريق ذات أولوية مع طريق أقل أهمية"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_3/8.png",titel: "ملتقى طرقي دوراني",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_3/9.png",titel: "الإشارة إلى الطابع الأولوي لطريق"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_3/10.png",titel: "نهاية الطابع الأولوي لطريق",),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
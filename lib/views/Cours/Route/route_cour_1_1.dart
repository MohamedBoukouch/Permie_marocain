import 'package:flutter/material.dart';
import 'package:permis_marocain/Config/constantes.dart';
import 'package:permis_marocain/widgets/imagecontainer.dart';

class RouteCour11 extends StatelessWidget {
  const RouteCour11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("علامات نهاية الإجبار"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_2/1.png",titel: "نهاية السرعة الدنيا الإجبارية"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_2/2.png",titel: "نهاية الممر الإجباري لمستعملي الدراجات",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_2/3.png",titel: "نهاية الممر الإجباري على الراجلين"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_2/4.png",titel: "نهاية الممر الإجباري على الفرسان",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_2/5.png",titel: "نهاية الممر الإجباري على مركبات الخدمات المنتظمة للنقل الجماعي"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_2/6.png",titel: "نهاية إجبارية استعمال سلاسل الثلوج حول عجلتين دافعتين على الأقل",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_2/7.png",titel: "نهاية إجبارية تشغيل أضواء التقابل"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_2/8.png",titel: "نهاية المسلك المخصص للترامواي",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_2/9.png",titel: "نهاية المسلك المخصص للمركبات البطيئة"),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
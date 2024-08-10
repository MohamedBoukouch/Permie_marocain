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
      appBar: AppBar(
        title: Text("علامات الإجبار "),
        backgroundColor: Colors.white,),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10,bottom: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/1.png",titel: "إجبارية الانعطاف نحو اليمين قبل العلامة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/2.png",titel: "إجبارية الانعطاف نحو اليسار قبل العلامة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/3.png",titel: "مدار إجباري نحو اليسار",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/4.png",titel: "مدار إجباري نحو اليمين",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/5.png",titel: "اتجاه إجباري عند أول ملتقى طرق: إلى الأمام",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/6.png",titel: "اتجاه إجباري عند أول ملتقى طرق: نحو اليمين",),
                ],
              ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/7.png",titel: "اتجاه إجباري عند أول ملتقى طرق: نحو اليسار",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/8.png",titel: "اتجاهان إجباريان عند أول ملتقى طرق: إلى الأمام أو نحو اليمين",),
                ],
              ),        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/11.png",titel: "اتجاهان إجباريان عند أول ملتقى طرق: إلى الأمام أو نحو اليسار",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/12.png",titel: "تجاهان إجباريان عند أول ملتقى طرق: نحو اليمين أو نحو اليسار",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/9.png",titel: "إلتزموا أقصى اليمين",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/10.png",titel: "سرعة دنيا إجبارية",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/13.png",titel: "اتجاه دوراني إجباري",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/14.png",titel: "ممر إجباري على مستعملي الدراجات",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/15.png",titel: "ممر إجباري على المركبات المجرورة بواسطة الدواب",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/16.png",titel: "ممر إجباري على العربات اليدوية",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/17.png",titel: "ممر إجباري للحيوانات",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/18.png",titel: "ممر إجباري على الفرسان",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/19.png",titel: "ممر إجباري على الراجلين",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/20.png",titel: "مسلك مخصص لمركبات الخدمات المنتظمة للنقل الجماعي",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/21.png",titel: "إجبارية وضع سلاسل الثلوج حول عجلتين دافعتين على الأقل",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/22.png",titel: "إجبارية تشغيل أضواء التقابل",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/23.png",titel: "مسلك مخصص للترمواي",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_1/partie_1/24.png",titel: "مسلك مخصص للمركبات البطيئة",),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
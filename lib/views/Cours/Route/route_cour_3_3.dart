import 'package:flutter/material.dart';
import 'package:permis_marocain/Config/constantes.dart';
import 'package:permis_marocain/widgets/imagecontainer.dart';

class RouteCour33 extends StatelessWidget {
  const RouteCour33({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("علامات نهاية المنع",style: TextStyle(fontFamily: "cairo"),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/1.png",titel: "نهاية تحديد السرعة"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/2.png",titel: "نهاية كل أشكال المنع التي سبقت الإشارة إليها المفروضة على المركبات المتحركة",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/3.png",titel: "نهاية تحديد السرعة"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/4.png",titel: "نهاية تحديد السرعة",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/5.png",titel: "نهاية تحديد السرعة"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/6.png",titel: "نهاية تحديد السرعة",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/7.png",titel: "نهاية منع التجاوز بالنسبة للمركبات والمركبات المتمفصلة والقطارات المزدوجة أو مجموعة من المركبات المخصصة لنقل البضائع التي تزيد حمولتها الإجمالية المسموح بها أو وزنها الإجمالي الدارج المأذون به عن 3.5 طن"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/8.png",titel: "نهاية منع التجاوز",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/9.png",titel: "نهاية المنع المبينة طبيعته على العلامة"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/10.png",titel: "نهاية منع استعمال المنبه الصوتي"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/11.png",titel: "نهاية منطقة التوقف الممنوع"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/12.png",titel: "نهاية منطقة ذات التوقف من جانب واحد بالتناوب النصف شهري"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/13.png",titel: "نهاية منطقة ذات التوقف المحدد زمنيا مع المراقبة بواسطة قرص"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/14.png",titel: "نهاية منطقة التوقف المؤدى عنه"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                  children: [
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/15.png",titel: "نهاية منطقة ذات التوقف من جانب واحد بالتناوب النصف الشهري ولمدة محددة زمنيا مع المراقبة بواسطة قرص"),
                    ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_2/16.png",titel: "نهاية المنطقة ذات السرعة المحددة في 30 كلم/س"),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
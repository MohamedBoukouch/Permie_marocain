import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Config/constantes.dart';
import '../../../widgets/imagecontainer.dart';

class RoutCour3 extends StatelessWidget {
  const RoutCour3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Image.asset("assets/cour_1/partie_1/1.png"),
      appBar: AppBar(
        title: Text("علامات المنع ",style: TextStyle(fontFamily: "cairo"),),
        backgroundColor: Colors.white,),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10,bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/1.png",titel: "اتجاه ممنوع",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/2.png",titel: "ممنوع السير في الاتجاهين",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/3.png",titel: "ولوج ممنوع على كل مركبة ذات محرك باستثناء الدراجات بمحرك والدراجات النارية",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/4.png",titel: "ولوج ممنوع على مركبات النقل الجماعي للأشخاص",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/5.png",titel: "ولوج ممنوع على الدراجات",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/6.png",titel: "ولوج ممنوع على الدراجات بمحرك",),
                ],
              ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/7.png",titel: "ولوج ممنوع على الدراجات النارية",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/8.png",titel: "ولوج ممنوع على الدراجات",),
                ],
              ),        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/11.png",titel: "ولوج ممنوع على المركبات المخصصة لنقل البضائع",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/12.png",titel: "ولوج ممنوع على الراجلين",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/13.png",titel: "ولوج ممنوع على المركبات المجرورة بواسطة دواب",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/14.png",titel: "ولوج ممنوع على العربات اليدوية",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/15.png",titel: "ولوج ممنوع على المركبات الفلاحية ذات محرك",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/16.png",titel: "ولوج ممنوع على المركبات ذات محرك باستثناء الدراجات بمحرك",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/17.png",titel: "ولوج ممنوع على المركبات التي تحمل أكثر من قدر معين من مواد قابلة للانفجار أو قابلة للاحتراق",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/18.png",titel: "ولوج ممنوع على المركبات التي تحمل أكثر من قدر معين من المواد من شأنها أن تلوث المياه",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/19.png",titel: "ولوج ممنوع على المركبات التي تحمل أكثر من قدر معين من البضائع الخطيرة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/20.png",titel: "ولوج ممنوع على المركبات التي يزيد عرضها مع الحمولة عن العدد المشار إليه",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/21.png",titel: "ولوج ممنوع على المركبات التي يزيد علوها مع الحمولة عن العدد المشار إليه",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/22.png",titel: "ولوج ممنوع على المركبات التي تفوق حمولتها الإجمالية المسموح بها أو وزنها الإجمالي الدارج المأذون به العدد المشار إليه",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/23.png",titel: "ولوج ممنوع على المركبات التي يتجاوز وزنها عن كل محور العدد المشار إليه",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/24.png",titel: "ولوج ممنوع على المركبات والمركبات المتمفصلة والقطارات المزدوجة أو مجموعة من المركبات التي يزيد طولها عن العدد المشار إليه",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/25.png",titel: "ممنوع على المركبات السير دون ترك مسافة دنيا فاصلة تساوي العدد المشار إليه",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/26.png",titel: "ممنوع الانعطاف نحو اليسار",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/27.png",titel: "ممنوع الانعطاف نحو اليمين",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/28.png",titel: "ممنوع القيام بنصف دورة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/29.png",titel: "ممنوع التجاوز",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/30.png",titel: "ممنوع بالنسبة للمركبات المخصصة لنقل البضائع  تجاوز جميع المركبات ذات محرك ما عدا تلك الثنائية العجلات",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/31.png",titel: "السماح بالمرور للقادم من الاتجاه المعاكس",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/32.png",titel: "تحديد السرعة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/33.png",titel: "تحديد السرعة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/34.png",titel: "تحديد السرعة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/35.png",titel: "تحديد السرعة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/36.png",titel: "تحديد السرعة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/37.png",titel: "منع استعمال المنبه الصوتي",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/38.png",titel: "وقوف عند مركز الجمارك",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/39.png",titel: "وقوف عند حاجز الشرطة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/40.png",titel: "وقوف عند حاجز الدرك",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/41.png",titel: "وقوف عند حاجز المراقبة الطرقية",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/42.png",titel: "وقوف عند حاجز الثلج",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/43.png",titel: "وقوف عند مركز الأداء",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/44.png",titel: "ممنوع التوقف",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/45.png",titel: "ممنوع الوقوف والتوقف",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/46.png",titel: "ممنوع التوقف من بداية الشهر إلى غاية النصف منه",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/47.png",titel: "ممنوع التوقف من 16 من الشهر إلى متمه",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/48.png",titel: "ولوج ممنوع على جميع المركبات ذات محرك",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/49.png",titel: "ولوج ممنوع على المركبات التي تجر قافلة أو مقطورة يفوق وزنها 250 كلغ",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/50.png",titel: "أشكال أخرى من المنع تبين طبيعتها بواسطة كتابة على العلامة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/51.png",titel: "دخول منطقة ممنوع فيها التوقف",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/52.png",titel: "دخول منطقة ذات التوقف من جانب واحد بالتناوب النصف شهري",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/53.png",titel: "دخول منطقة يكون التوقف فيها محددا زمنيا ومراقبا بواسطة قرص",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/54.png",titel: "دخول منطقة التوقف فيها مؤدى عنه",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/55.png",titel: "دخول منطقة ذات التوقف بالتناوب النصف الشهري من جانب واحد ولمدة زمنية محددة ومراقبة بواسطة قرص",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_3/partie_1/56.png",titel: "دخول منطقة السرعة فيها محدودة في 30 كلم/س",),
                ],
              ),

             
            ],
          ),
        ),
      ),
    );
  }
}
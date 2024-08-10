import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Config/constantes.dart';
import '../../../widgets/imagecontainer.dart';

class RoutCour2 extends StatelessWidget {
  const RoutCour2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Image.asset("assets/cour_1/partie_1/1.png"),
      appBar: AppBar(
        title: Text("علامات الخطر ",style: TextStyle(fontFamily: 'cairo'),),
        backgroundColor: Colors.white,),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10,bottom: 20),
          child: Column(
            children: [
              //ROW_1
              const Text("(علامات الخطر (دائمة",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/1.png",titel: "خطر منعرج على اليسار",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/2.png",titel: "خطر منعرجات متتابعة أولها على اليمين",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/3.png",titel: "خطر منعرجات متتابعة أولها على اليسار",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/4.png",titel: "خطر منعرج على اليمين",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/5.png",titel: "خطر عقبة ذات صعود حاد",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/6.png",titel: "خطر قارعة ضيقة من اليسار",),
                ],
              ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/7.png",titel: "خطر قارعة ضيقة محليا",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/8.png",titel: "خطر قارعة ضيقة",),
                ],
              ),        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/11.png",titel: "خطر قارعة تطفو عليها المياه",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/12.png",titel: "خطر طريق محدودب",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/9.png",titel: "خطر قارعة ضيقة من اليمين",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/10.png",titel: "منحدر خطير",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/13.png",titel: "خطر مخفض سرعة محدودب",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/14.png",titel: "خطر جسر متحرك",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/15.png",titel: "خطر منفذ إلى رصيف أو سيف نهر",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/16.png",titel: "خطر ممر الراجلين",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/17.png",titel: "مكان يرتاده الاطفال",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/18.png",titel: "خطر تناثر الحصى",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/19.png",titel: "خطر تساقط الأحجار",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/20.png",titel: "خطر قارعة يقع بها انزلاق",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/21.png",titel: "خطر مرور الفرسان",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/22.png",titel: "خطر مرور حيوانات أليفة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/23.png",titel: "خطر مرور حيوانات أليفة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/24.png",titel: "خطر منفذ لمستعملي الدراجات والدراجات بمحرك",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/25.png",titel: "خطر مرور حيوانات أليفة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/26.png",titel: "خطر ريح جانبية",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/27.png",titel: "خطر السير في الاتجاهين",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/28.png",titel: "إعلان عن أضواء ثلاثية اللون",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/29.png",titel: "عبور منطقة خطر جوي",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/30.png",titel: "خطر مرور حيوانات متوحشة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/31.png",titel: "خطر عبور ممرات الترامواي",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/32.png",titel: "خطر تقاطع طريق مع سكة حديدية بدون حواجز وبدون نصف حاجز",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/33.png",titel: "أخطار أخرى",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/35.png",titel: "خطر تقاطع طريق مع سكة حديدية مجهزبحاجز يستعمل يدويا عند مرور القطارات",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/36.png",titel: "خطر مرور مركبات مجرورة بواسطة الدواب",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/37.png",titel: "خطر مرور مركبات فلاحية",),
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  // ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_1/37.png",titel: "مسلك مخصص للترمواي",),
                ],
              ),
              SizedBox(height: 50),
              const Text("علامات الخطر (المؤقتة)",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/1.png",titel: "خطر مؤقت: طريق محدودب"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/2.png",titel: "خطر مؤقت: قارعة ضيقة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/3.png",titel: "خطر مؤقت: قارعة ضيقة على اليمين"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/4.png",titel: "خطر مؤقت: قارعة ضيقة على اليسار",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/5.png",titel: "خطر مؤقت قارعة يقع بها انزلاق"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/6.png",titel: "خطر مؤقت: أشغال",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/7.png",titel: "أخطار أخرى مؤقتة"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/8.png",titel: "إعلان مؤقت عن إشارات ضوئية لتنظيم السير",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/9.png",titel: "خطر مؤقت: تناثر الحصى"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/10.png",titel: "خطر مؤقت: حادثة سير"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_2/partie_2/11.png",titel: "خطر مؤقت: ازدحام شديد"),
                ],
              ),
             
              
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Config/constantes.dart';
import '../../../widgets/imagecontainer.dart';

class RoutCour4 extends StatelessWidget {
  const RoutCour4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Image.asset("assets/cour_4/1.png"),
      appBar: AppBar(
        title: Text("علامات الارشاد  "),
        backgroundColor: Colors.white,),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10,bottom: 20),
          child: Column(
            children: [
              //ROW_1
              const Text("علامات الإرشاد",
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
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/1.png",titel: "موقف سيارات",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/2.png",titel: "مكان مهيأ للتوقف المؤدى عنه ",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/3.png",titel: "مكان مهيأ للتوقف المجاني ولمدة زمنية محددة مع مراقبة بواسطة قرص",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/4.png",titel: "موقف سيارات خاص بشحن السيارات الكهربائية ",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/5.png",titel: "مكان مهيأ لشحن السيارات الكهربائية ",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/6.png",titel: "موقف سيارات يمكن عنده لمستعملي الطريق ركوب حافلة",),
                ],
              ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/7.png",titel: "موقف سيارات يمكن عنده لمستعملي الطريق ركوب الترامواي ",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/8.png",titel: "موقف سيارات يمكن عنده لمستعملي الطريق ركوب قطار",),
                ],
              ),        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/9.png",titel: "مؤسسة طبية ",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/10.png",titel: "خطر نشوب حريق بالغابة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/11.png",titel: "محطة سيارة الأجرة حيث الوقوف والتوقف مخصص فقط لسيارات الأجرة، يحدد امتداد هذا التخصيص بتشوير أفقي ",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/12.png",titel: "ممر الراجلين ",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/13.png",titel: "طريق ذات اتجاه واحد",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/14.png",titel: "نهاية مسلك التجاوز على طريق ذات ثلاثة مسالك ",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/15.png",titel: "تشوير مسبق لمسلك خاص بالتجاوز أو لمقطع طريق بقارعات منفصلة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/16.png",titel: "ظروف سير خاصة بمسلك على الطريق المتبعة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/17.png",titel: "تشوير مسبق لمسلك خاص بالتجاوز أو لمقطع طريق بقارعات منفصلة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/18.png",titel: "ظروف سير خاصة بمسلك على الطريق المتبعة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/19.png",titel: "مسار تجاوز ذو ثلاثة مسالك",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/20.png",titel: "بداية مقطع طريق ذو ثلاثة مسالك",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/21.png",titel: "الإشارة إلى مسالك مخصصة عند الاقتراب من ملتقى الطرق من أجل الانعطاف نحو اليسار",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/22.png",titel: "الإشارة إلى مسالك مخصصة عند الاقتراب من ملتقى الطرق من أجل الانعطاف نحو اليمين",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/23.png",titel: "ظروف خاصة للسير على الطريق أو طريق متفرع",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/24.png",titel: "منفذ الإغاثة على اليمين",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/25.png",titel: "منفذ الإغاثة على اليسار"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/26.png",titel: " مسلك غير نافذ",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/27.png",titel: "تشوير مسبق لمسلك غير نافذ"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/28.png",titel: "ارشاد الى وجود مخفض السرعة المحدودب",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/29.png",titel: "إعلان عن وجود مسلك أو شريط خاص بالدراجات منصوح به مخصص للدراجات ذات عجلتين أو ثلاث عجلات"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/30.png",titel: "إعلان عن نهاية مسلك أو شريط خاص بالدراجات المنصوح به والمخصص للدراجات ذات عجلتين أو ثلاث عجلات",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/31.png",titel: "مدخل طريق السيار. تعلن هذه العلامة عن بداية تطبيق قواعد السير الخاصة بالطريق السيار"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/32.png",titel: "نهاية الطريق السيار. تعلن هذه العلامة عن نهاية تطبيق قواعد السير الخاصة بالطريق السيار",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/33.png",titel: "تشوير مسبق لمكان سحب تذكرة الأداء"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/34.png",titel: "أداء عند عون التحصيل"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/35.png",titel: "أداء بالبطاقة البنكية"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/36.png",titel: "أداء بواسطة بطاقة الاشتراك"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/37.png",titel: "أداء عن بعد بواسطة الاشتراك"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/38.png",titel: "أداء آلي نقدا"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/39.png",titel: "مرور الترامواي"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/40.png",titel: "مكان معد لتوقف القوافل والقوافل ذات محرك"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/41.png",titel: "منطقة خاصة بالراجلين"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/42.png",titel: "نهاية المنطقة الخاصة بالراجلين"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/43.png",titel: "لكم حق الأولوية  بالنسبة لحركة السير القادمة من الإتجاه المعاكس"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/44.png",titel: "قص عدد المسالك في طريق ذات قارعات منفصلة أو في مسلك للتجاوز"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/45.png",titel: ".تبين هذه العلامة مدخل النفق حيث يمنع القيام بنصف دورة أو الوقوف أو التوقف إلا في الأماكن المخصصة للتوقف الاستعجالي."),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/46.png",titel: "نقص عدد المسالك في طريق ذات قارعات منفصلة أو في مسلك للتجاوز"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/47.png",titel: "الخروج من النفق"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/48.png",titel: "نقص عدد المسالك في طريق ذات قارعات منفصلة أو في مسلك للتجاوز"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/49.png",titel: "إرشادات مختلفة"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/50.png",titel: "ممر خاص بسير الراجلين والمركبات بدون محرك"),
                ],
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/51.png",titel: "نهاية الممر الخاص بالراجلين والمركبات بدون محرك",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/52.png",titel: "وقوف الحافلات",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/53.png",titel: "منظر جميل",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/54.png",titel: "وقوف الترامواي",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/55.png",titel: "مكان الوقوف الاستعجالي",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/56.png",titel: "مرافق أو خدمات متنوعة",),
                ],
              ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/57.png",titel: "مركز الإغاثة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/58.png",titel: "مركز هاتف",),
                ],
              ),        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/59.png",titel: "محطة إصلاحات أولية",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/60.png",titel: "محطة توزيع الوقود مفتوحة 7 أيام/7 و24 ساعة/24",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/61.png",titel: "مركز نداء الإغاث",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/62.png",titel: "مطعم",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/63.png",titel: "فندق",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/64.png",titel: "مكان للتنزه",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/65.png",titel: "محل بيع مشروبات أو مقهى",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/66.png",titel: "مخيم",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/67.png",titel: "نقطة انطلاق جولة",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/68.png",titel: "ساحة معدة للتخييم ووقوف مركبات التخييم",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/69.png",titel: "ساحة معدة لوقوف قوافل التخييم",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/70.png",titel: "مأوى فندقي",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/71.png",titel: "مأوى للشباب",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/72.png",titel: "نقطة انطلاق مسار للتزلج",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/73.png",titel: "معلومات متعلقة بخدمات أو أنشطة سياحية",),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/74.png",titel: "منشآت يمكن ولوجها من طرف الأشخاص ذوي الحركية المحدودة",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/75.png",titel: "مراحيض عمومية"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/76.png",titel: "محطة نقل هوائي",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/77.png",titel: "محطة لتفريغ المياه المستعملة خاصة بالقوافل والقوافل ذات محرك"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/78.png",titel: "رصيف إركاب على متن السفن",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/79.png",titel: "مكان انطلاق نقل هوائي"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/80.png",titel: "ألعاب الأطفال",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/81.png",titel: "كان وضع القوارب الخفيفة في الماء"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/82.png",titel: "مكان للترفيه",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/83.png",titel: "محطة نفخ العجلات ذات استعمال مجاني خارج المحطة متعددة الخدمات"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/84.png",titel: "عدة لمكافحة الحريق"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/85.png",titel: "منفذ الإغاثة على اليمين"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/86.png",titel: "منفذ الإغاثة على اليسار"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/87.png",titel: "لوحة للتذكير بمعلومات عامة حول السلامة الطرقية"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/88.png",titel: "التشوير المسبق بوجود محطة الأداء"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/89.png",titel: "التشوير المسبق لبداية مقطع طرقي أو طريق سيار بالأداء"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/90.png",titel: "علامة تذكر بالمسافة القانونية الواجب على مستعملي الطريق تركها بين المركبات على الطريق"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/91.png",titel: "التشوير المسبق لمحطة الأداء"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/92.png",titel: "علامة تذكر بالمسافة القانونية الواجب على مستعملي الطريق تركها بين المركبات على الطريق"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
                children: [
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/93.png",titel: "علامة تشير إلى منطقة تكون السرعة فيها مراقبة بجهاز مراقبة بالرادار"),
                  ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/94.png",titel: "علامة تذكر بالمسافة القانونية الواجب على مستعملي الطريق تركها بين المركبات على الطريق"),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
              //   children: [
              //     ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/95.png",titel: "السرعة المتوسطة بحساب الوقت المستغرق عند الخروج من الطريق السيار"),
              //     ImageContainer(screenHeight: AppConstantes.screenHeight, screenWidth: AppConstantes.screenWidth,file: "assets/cour_4/96.png",titel: "علامة تعلن عن منطقة تكون الحمولة فيها مراقبة بواسطة جهاز لمراقبة الحمولة في محطة ثابتة للقياس"),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
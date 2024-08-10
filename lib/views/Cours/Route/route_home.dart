import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permis_marocain/views/Cours/Route/route_cour_1.dart';
import 'package:permis_marocain/views/Cours/Route/route_cour_1_1.dart';
import 'package:permis_marocain/views/Cours/Route/route_cour_2.dart';
import 'package:permis_marocain/views/Cours/Route/route_cour_2_2.dart';
import 'package:permis_marocain/views/Cours/Route/route_cour_3.dart';
import 'package:permis_marocain/views/Cours/Route/route_cour_3_3.dart';
import 'package:permis_marocain/views/Cours/Route/route_cour_4.dart';

import '../../../widgets/list_titel_container.dart';

class RoutHome extends StatelessWidget {
  const RoutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اشارات المرور',style: TextStyle(fontFamily: 'cairo'),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(RoutCour1());
                },
                child: ListTitelContainer(
                  titel: "علامات الإجبار",
                  subtitel: 'المنع يبتدئ من العلامة و يمتد حتى ملتقى الطرق القادم أو حتى اشارة نهاية المنع',
                  image: "assets/cour_1/partie_1/1.png",
                  ),
              ),
              InkWell(
                onTap: () {
                  Get.to(RouteCour11());
                },
                child: ListTitelContainer(
                  titel: "علامات نهاية الإجبار",
                  subtitel: 'المنع يبتدئ من العلامة و يمتد حتى ملتقى الطرق القادم أو حتى اشارة نهاية المنع',
                  image: "assets/cour_1/partie_2/1.png",
                  ),
              ),

              InkWell(
                onTap: () => Get.to(const RoutCour2()),
                child: ListTitelContainer(
                  titel: "علامات الخطر ",
                  subtitel: 'المنع يبتدئ من العلامة و يمتد حتى ملتقى الطرق القادم أو حتى اشارة نهاية المنع',
                  image: "assets/cour_3/partie_1/1.png",
                ),
              ),

              InkWell(
                onTap: () => Get.to(const RouteCour22()),
                child: ListTitelContainer(
                  titel: "علامات الأسبقية",
                  subtitel: 'المنع يبتدئ من العلامة و يمتد حتى ملتقى الطرق القادم أو حتى اشارة نهاية المنع',
                  image: "assets/cour_2/partie_3/1.png",
                ),
              ),

              InkWell(
                onTap: () => Get.to(const RoutCour3()),
                child: ListTitelContainer(
                  titel: "علامات المنع  ",
                  subtitel: 'المنع يبتدئ من العلامة و يمتد حتى ملتقى الطرق القادم أو حتى اشارة نهاية المنع',
                  image: "assets/cour_3/partie_1/1.png",
                  ),
                ),

                InkWell(
                onTap: () => Get.to(const RouteCour33()),
                child: ListTitelContainer(
                  titel: "علامات نهاية المنع",
                  subtitel: 'المنع يبتدئ من العلامة و يمتد حتى ملتقى الطرق القادم أو حتى اشارة نهاية المنع',
                  image: "assets/cour_3/partie_2/1.png",
                  ),
                ),
              
              InkWell(
                onTap: () => Get.to(RoutCour4()),
                child: ListTitelContainer(
                  titel: "علامات الارشاد",
                  subtitel: 'المنع يبتدئ من العلامة و يمتد حتى ملتقى الطرق القادم أو حتى اشارة نهاية المنع',
                  image: "assets/cour_4/1.png",
                  ),
              ),

              // ListTitelContainer(titel: "التشوير العمودي"),
              // ListTitelContainer(titel: "اللويحات"),
              // ListTitelContainer(titel: "علامات المواقع"),

              InkWell(
                onTap: () => const RoutCour4(),
                child: ListTitelContainer(
                  titel: "علامات الاتجاه",
                  subtitel: 'المنع يبتدئ من العلامة و يمتد حتى ملتقى الطرق القادم أو حتى اشارة نهاية المنع',
                  image: "assets/cour_4/1.png",
                  ),
              ),

              // ListTitelContainer(titel: "العلامات الضوئية"),
              // ListTitelContainer(titel: "التشوير الأفقي"),
              // ListTitelContainer(titel: "علامات وأجهزة التشوير المؤقت"),
              // ListTitelContainer(titel: "الإشارات الضوئية وإشارات أعوان المرور"),
              // ListTitelContainer(titel: "ملاءمة السياقة في الظروف الخاصة بالمنعرجات الخطيرة والعقبة والمنحدر"),
              // ListTitelContainer(titel: "ملاءمة السياقة في الظروف المناخية السيئة"),
              // ListTitelContainer(titel: "خصائص مختلف أنواع الطريق"),
              // ListTitelContainer(titel: "ملاءمة السياقة في الظروف الخاصة للإضاءة"),
              // ListTitelContainer(titel: ""),
            ],
          ),
        ),
      ),
    );
  }
}

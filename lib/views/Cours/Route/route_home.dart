import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permis_marocain/views/Cours/Route/route_cour_1.dart';

import '../../../widgets/list_titel_container.dart';

class RoutHome extends StatelessWidget {
  const RoutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الطريق'),
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
                child: ListTitelContainer(titel: "علامات الإجبار ونهاية الإجبار")),
              ListTitelContainer(titel: "علامات الخطر والأسبقية"),
              ListTitelContainer(titel: "التشوير العمودي"),
              ListTitelContainer(titel: "علامات المنع ونهاية المنع"),
              ListTitelContainer(titel: "اللويحات"),
              ListTitelContainer(titel: "علامات المواقع"),
              ListTitelContainer(titel: "علامات الاتجاه"),
              ListTitelContainer(titel: "علامات الارشاد"),
              ListTitelContainer(titel: "العلامات الضوئية"),
              ListTitelContainer(titel: "التشوير الأفقي"),
              ListTitelContainer(titel: "علامات وأجهزة التشوير المؤقت"),
              ListTitelContainer(titel: "الإشارات الضوئية وإشارات أعوان المرور"),
              ListTitelContainer(titel: "ملاءمة السياقة في الظروف الخاصة بالمنعرجات الخطيرة والعقبة والمنحدر"),
              ListTitelContainer(titel: "ملاءمة السياقة في الظروف المناخية السيئة"),
              ListTitelContainer(titel: "خصائص مختلف أنواع الطريق"),
              ListTitelContainer(titel: "ملاءمة السياقة في الظروف الخاصة للإضاءة"),
              // ListTitelContainer(titel: ""),
            ],
          ),
        ),
      ),
    );
  }
}

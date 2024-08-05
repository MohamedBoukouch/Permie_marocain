

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permis_marocain/views/loading.dart';

import 'views/Cours/Route/route_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      // home: Loading(),
      home: RoutHome(),
    );
  }
}


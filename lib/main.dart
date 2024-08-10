

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permis_marocain/DB/sql_bd.dart';
import 'package:permis_marocain/firebase_options.dart';
import 'package:permis_marocain/views/loading.dart';

import 'views/Cours/Route/route_home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Sqldb sqlDb = Sqldb();
  await sqlDb.initialDb(); 
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Loading(),
      // home: RoutHome(),
    );
  }
}


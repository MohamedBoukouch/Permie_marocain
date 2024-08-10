import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permis_marocain/Config/constantes.dart';
import 'package:permis_marocain/DB/series_data.dart';
import 'package:permis_marocain/DB/sql_bd.dart';
import 'package:permis_marocain/views/home.dart';
import 'package:permis_marocain/views/series/afficher_serie.dart';
import 'package:permis_marocain/widgets/exame_container.dart';

class Series1 extends StatefulWidget {
  const Series1({super.key});

  @override
  State<Series1> createState() => _Series1State();
}

class _Series1State extends State<Series1> {
  Sqldb sqlDb = Sqldb();

  Future<List<dynamic>> _fetchSeriesData(int number) async {
    try {
      // Query to get both `resultat` and `nbstart`
      List<Map<String, dynamic>> data = await sqlDb.readData(
        "SELECT resultat, nbstart FROM series WHERE id = $number"
      );

      if (data.isNotEmpty) {
        String resultString = data.first['resultat'];
        int nbStart = data.first['nbstart'];
        return [resultString, nbStart];
      } else {
        // Return default values if no data found
        return ['0/40', 0];
      }
    } catch (e) {
      print("Error fetching data: $e");
      return ['0', 0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'السلاسل',
          style: TextStyle(fontFamily: "cairo"),
        ),
        leading: 
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.offAll(const HomeView());
            },
          ),
        
      ),
      body: Column(
        children: [
          //SERIE 1&2
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
              children: [
                FutureBuilder<List<dynamic>>(
                  future: _fetchSeriesData(1),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error fetching result');
                    } else {
                      List<dynamic> data = snapshot.data ?? ['0', 0];
                      String result = data[0];
                      int nbStart = data[1];
                      return InkWell(
                        onTap: () {
                          Get.to(AfficherSerie(number: 1, questions: Seriees.questions_1));
                          print("Result for 1: $result");
                        },
                        child: ExameContainer(
                          screenHeight: AppConstantes.screenHeight,
                          screenWidth: AppConstantes.screenWidth,
                          titel: "التشوير الطرقي",
                          resultat: result,
                          number: 1,
                          nmb_start: nbStart,
                        ),
                      );
                    }
                  },
                ),
                FutureBuilder<List<dynamic>>(
                  future: _fetchSeriesData(2),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error fetching result');
                    } else {
                      List<dynamic> data = snapshot.data ?? ['0', 0];
                      String result = data[0];
                      int nbStart = data[1];
                      return InkWell(
                        onTap: () {
                          Get.to(AfficherSerie(number: 2, questions: Seriees.questions_1));
                        },
                        child: ExameContainer(
                          screenHeight: AppConstantes.screenHeight,
                          screenWidth: AppConstantes.screenWidth,
                          titel: "التشوير الطرقي",
                          resultat: result,
                          number: 2,
                          nmb_start: nbStart,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          //SERIE 3&4
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
              children: [
                FutureBuilder<List<dynamic>>(
                  future: _fetchSeriesData(3),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error fetching result');
                    } else {
                      List<dynamic> data = snapshot.data ?? ['0', 0];
                      String result = data[0];
                      int nbStart = data[1];
                      return InkWell(
                        onTap: () {
                          Get.to(AfficherSerie(number: 3, questions: Seriees.questions_1));
                          print("Result for 1: $result");
                        },
                        child: ExameContainer(
                          screenHeight: AppConstantes.screenHeight,
                          screenWidth: AppConstantes.screenWidth,
                          titel: "التشوير الطرقي",
                          resultat: result,
                          number: 3,
                          nmb_start: nbStart,
                        ),
                      );
                    }
                  },
                ),
                FutureBuilder<List<dynamic>>(
                  future: _fetchSeriesData(4),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error fetching result');
                    } else {
                      List<dynamic> data = snapshot.data ?? ['0', 0];
                      String result = data[0];
                      int nbStart = data[1];
                      return InkWell(
                        onTap: () {
                          Get.to(AfficherSerie(number: 4, questions: Seriees.questions_1));
                        },
                        child: ExameContainer(
                          screenHeight: AppConstantes.screenHeight,
                          screenWidth: AppConstantes.screenWidth,
                          titel: "التشوير الطرقي",
                          resultat: result,
                          number: 4,
                          nmb_start: nbStart,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),        
        ],
      ),
    );
  }
}

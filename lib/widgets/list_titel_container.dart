import 'package:flutter/material.dart';

class ListTitelContainer extends StatelessWidget {
  String titel;
  String subtitel;
  String image;
  ListTitelContainer({
    super.key,
    required this.titel,
    required this.subtitel,
    required this.image,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 80, 78, 78), // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Shadow color
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: ListTile(
                
                title:Text(
                    titel,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontWeight: FontWeight.bold,
                      fontFamily: 'cairo',
                      fontSize: 18
                       // Text styling
                    ),
                  ),
                subtitle: Text(subtitel,textAlign: TextAlign.right,style: TextStyle(fontFamily: 'cairo',fontSize: 13,color: Colors.white),),
                trailing: Image.asset(image), 
                leading: Icon(Icons.chevron_left,color: Colors.white,),
                // Icon color
              ),
            );
  }
}
import 'package:flutter/material.dart';

class ListTitelContainer extends StatelessWidget {
  String titel;
  ListTitelContainer({super.key,required this.titel});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.blueAccent, // Background color
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
                
                title: Center(
                  child: Text(
                    titel,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontWeight: FontWeight.bold, // Text styling
                    ),
                  ),
                ),
                trailing: Icon(Icons.more_vert, color: Colors.white), // Icon color
              ),
            );
  }
}
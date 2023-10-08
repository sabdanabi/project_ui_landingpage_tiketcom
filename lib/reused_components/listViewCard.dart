import 'package:flutter/material.dart';

class ListViewCard extends StatelessWidget{

  final String text;

  ListViewCard({
    required this.text,
  });

  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 13.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: double.infinity, // Lebar maksimum container
          maxHeight: double.infinity, // Tinggi maksimum container
        ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: Colors.black26, // Warna border
              width: 1.0, // Lebar border
            ),
          ),
        child: Center(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(text),
           )
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{

  final String text;
  final IconData icon;

  CustomCard({
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Color(0xfff0efef),
          ),
          child: Icon(icon,color: Colors.lightBlueAccent,size: 45.0,),

          ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54)),
        )
      ],
    );
}}

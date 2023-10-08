import 'package:flutter/material.dart';


class promoImgContainer extends StatelessWidget{

  final String imgName;

  promoImgContainer({
    required this.imgName,
  });

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15),
      child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              imgName,
              fit: BoxFit.cover,
            ),
          )
      ),
    );
  }
}
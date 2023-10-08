import 'package:flutter/material.dart';


class tourCard extends StatelessWidget{

  final String imgName;
  final String title;
  final String addres;
  final String review;
  final String price;

  tourCard({
    required this.imgName,
    required this.title,
    required this.addres,
    required this.review,
    required this.price,
  });

  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 10.0,left: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.31,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Warna bayangan dan tingkat transparansi
              spreadRadius: 1, // Menyebarkan bayangan seberapa jauh
              blurRadius: 7, // Mengaburkan bayangan
              offset: Offset(0, 3), // Menggeser bayangan secara horizontal dan vertikal
            ),
          ],
        ),

        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0), // Border radius sudut kiri atas
                topRight: Radius.circular(5.0), // Border radius sudut kanan atas
              ),
              child: Image.asset(
                imgName,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 45.0,top: 10.0),
              child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 40.0,top: 10.0),
              child: Text(addres,style: TextStyle(fontSize: 12.0,color: Colors.black45),),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 58.0,top: 10.0),
              child: Text(review,style: TextStyle(fontSize: 12.0,color: Colors.black45),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 30.0),
              child: Align(
                alignment: Alignment.centerLeft, // Ini yang mengatur teks ke kiri
                child:  Text(price,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}